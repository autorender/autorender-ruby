# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Files#list
    class FileListResponse < Autorender::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute file_no
      #
      #   @return [String]
      required :file_no, String

      # @!attribute folder_name
      #
      #   @return [String, nil]
      required :folder_name, String, nil?: true

      # @!attribute folder_no
      #
      #   @return [String, nil]
      required :folder_no, String, nil?: true

      # @!attribute format_
      #
      #   @return [String, nil]
      required :format_, String, api_name: :format, nil?: true

      # @!attribute height
      #
      #   @return [Integer, nil]
      required :height, Integer, nil?: true

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>Object}, nil]
      required :metadata, Autorender::Internal::Type::HashOf[Autorender::Internal::Type::Unknown], nil?: true

      # @!attribute mime_type
      #
      #   @return [String]
      required :mime_type, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute path
      #
      #   @return [String]
      required :path, String

      # @!attribute size
      #
      #   @return [Integer]
      required :size, Integer

      # @!attribute source
      #
      #   @return [String]
      required :source, String

      # @!attribute tags
      #
      #   @return [Array<String>]
      required :tags, Autorender::Internal::Type::ArrayOf[String]

      # @!attribute updated_at
      #
      #   @return [Time, nil]
      required :updated_at, Time, nil?: true

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!attribute width
      #
      #   @return [Integer, nil]
      required :width, Integer, nil?: true

      # @!method initialize(id:, created_at:, file_no:, folder_name:, folder_no:, format_:, height:, metadata:, mime_type:, name:, path:, size:, source:, tags:, updated_at:, url:, width:)
      #   @param id [String]
      #   @param created_at [Time]
      #   @param file_no [String]
      #   @param folder_name [String, nil]
      #   @param folder_no [String, nil]
      #   @param format_ [String, nil]
      #   @param height [Integer, nil]
      #   @param metadata [Hash{Symbol=>Object}, nil]
      #   @param mime_type [String]
      #   @param name [String]
      #   @param path [String]
      #   @param size [Integer]
      #   @param source [String]
      #   @param tags [Array<String>]
      #   @param updated_at [Time, nil]
      #   @param url [String]
      #   @param width [Integer, nil]
    end
  end
end
