# typed: strong

module Autorender
  module Resources
    # File management endpoints (API key required)
    class Files
      # Get file details
      sig do
        params(
          file_no: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Models::FileRetrieveResponse)
      end
      def retrieve(file_no, request_options: {})
      end

      # List/search files with pagination, filtering, and sorting.
      sig do
        params(
          folder_no: String,
          limit: Integer,
          page: Integer,
          search: String,
          sort: Autorender::FileListParams::Sort::OrSymbol,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(
          Autorender::Internal::PagePagination[
            Autorender::Models::FileListResponse
          ]
        )
      end
      def list(
        # Filter by folder number
        folder_no: nil,
        limit: nil,
        page: nil,
        # Partial name match (case-insensitive)
        search: nil,
        sort: nil,
        request_options: {}
      )
      end

      # Delete file
      sig do
        params(
          file_no: String,
          request_options: Autorender::RequestOptions::OrHash
        ).void
      end
      def delete(file_no, request_options: {})
      end

      # Rename file
      sig do
        params(
          file_no: String,
          name: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Models::FileRenameResponse)
      end
      def rename(
        file_no,
        # New file name without extension or path separators
        name:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Autorender::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
