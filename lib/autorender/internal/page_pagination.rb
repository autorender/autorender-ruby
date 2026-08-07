# frozen_string_literal: true

module Autorender
  module Internal
    # @generic Elem
    #
    # @example
    #   if page_pagination.has_next?
    #     page_pagination = page_pagination.next_page
    #   end
    #
    # @example
    #   page_pagination.auto_paging_each do |file|
    #     puts(file)
    #   end
    class PagePagination
      include Autorender::Internal::Type::BasePage

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :files

      # @return [Meta]
      attr_accessor :meta

      # @return [Boolean]
      def next_page?
        meta&.has_next
      end

      # @raise [Autorender::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = Autorender::Internal::Util.deep_merge(@req, {query: {page: (meta&.page || 1).to_i.succ}})
        @client.request(req)
      end

      # @param blk [Proc]
      #
      # @yieldparam [generic<Elem>]
      def auto_paging_each(&blk)
        unless block_given?
          raise ArgumentError.new("A block must be given to ##{__method__}")
        end

        page = self
        loop do
          page.files&.each(&blk)

          break unless page.next_page?
          page = page.next_page
        end
      end

      # @api private
      #
      # @param client [Autorender::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}]
      # @param page_data [Hash{Symbol=>Object}]
      def initialize(client:, req:, headers:, page_data:)
        super

        case page_data
        in {files: Array => files}
          @files = files.map { Autorender::Internal::Type::Converter.coerce(@model, _1) }
        else
        end
        case page_data
        in {meta: Hash | nil => meta}
          @meta = Autorender::Internal::Type::Converter.coerce(
            Autorender::Internal::PagePagination::Meta,
            meta
          )
        else
        end
      end

      # @api private
      #
      # @return [String]
      def inspect
        model = Autorender::Internal::Type::Converter.inspect(@model, depth: 1)

        "#<#{self.class}[#{model}]:0x#{object_id.to_s(16)}>"
      end

      class Meta < Autorender::Internal::Type::BaseModel
        # @!attribute has_next
        #
        #   @return [Boolean, nil]
        optional :has_next, Autorender::Internal::Type::Boolean, api_name: :hasNext

        # @!attribute page
        #
        #   @return [Integer, nil]
        optional :page, Integer

        # @!method initialize(has_next: nil, page: nil)
        #   @param has_next [Boolean]
        #   @param page [Integer]
      end
    end
  end
end
