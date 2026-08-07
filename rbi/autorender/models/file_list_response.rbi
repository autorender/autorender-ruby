# typed: strong

module Autorender
  module Models
    class FileListResponse < Autorender::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Autorender::Models::FileListResponse,
            Autorender::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :file_no

      sig { returns(T.nilable(String)) }
      attr_accessor :folder_name

      sig { returns(T.nilable(String)) }
      attr_accessor :folder_no

      sig { returns(T.nilable(String)) }
      attr_accessor :format_

      sig { returns(T.nilable(Integer)) }
      attr_accessor :height

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :mime_type

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :path

      sig { returns(Integer) }
      attr_accessor :size

      sig { returns(String) }
      attr_accessor :source

      sig { returns(T::Array[String]) }
      attr_accessor :tags

      sig { returns(T.nilable(Time)) }
      attr_accessor :updated_at

      sig { returns(String) }
      attr_accessor :url

      sig { returns(T.nilable(Integer)) }
      attr_accessor :width

      sig do
        params(
          id: String,
          created_at: Time,
          file_no: String,
          folder_name: T.nilable(String),
          folder_no: T.nilable(String),
          format_: T.nilable(String),
          height: T.nilable(Integer),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          mime_type: String,
          name: String,
          path: String,
          size: Integer,
          source: String,
          tags: T::Array[String],
          updated_at: T.nilable(Time),
          url: String,
          width: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        file_no:,
        folder_name:,
        folder_no:,
        format_:,
        height:,
        metadata:,
        mime_type:,
        name:,
        path:,
        size:,
        source:,
        tags:,
        updated_at:,
        url:,
        width:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            file_no: String,
            folder_name: T.nilable(String),
            folder_no: T.nilable(String),
            format_: T.nilable(String),
            height: T.nilable(Integer),
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            mime_type: String,
            name: String,
            path: String,
            size: Integer,
            source: String,
            tags: T::Array[String],
            updated_at: T.nilable(Time),
            url: String,
            width: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end
    end
  end
end
