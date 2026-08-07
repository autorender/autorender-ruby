# typed: strong

module Autorender
  module Internal
    class PagePagination
      include Autorender::Internal::Type::BasePage

      Elem = type_member

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :files

      sig { returns(Meta) }
      attr_accessor :meta

      # @api private
      sig { returns(String) }
      def inspect
      end

      class Meta < Autorender::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(Meta, Autorender::Internal::AnyHash) }

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_next

        sig { params(has_next: T::Boolean).void }
        attr_writer :has_next

        sig { returns(T.nilable(Integer)) }
        attr_reader :page

        sig { params(page: Integer).void }
        attr_writer :page

        sig do
          params(has_next: T::Boolean, page: Integer).returns(T.attached_class)
        end
        def self.new(has_next: nil, page: nil)
        end

        sig { override.returns({ has_next: T::Boolean, page: Integer }) }
        def to_hash
        end
      end
    end
  end
end
