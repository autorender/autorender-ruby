# frozen_string_literal: true

require_relative "../test_helper"

class Autorender::Test::Resources::FilesTest < Autorender::Test::ResourceTest
  def test_retrieve
    response = @autorender.files.retrieve("fileNo")

    assert_pattern do
      response => Autorender::Models::FileRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Autorender::Models::FileRetrieveResponse::Data,
        success: Autorender::Models::FileRetrieveResponse::Success
      }
    end
  end

  def test_list
    response = @autorender.files.list

    assert_pattern do
      response => Autorender::Internal::PagePagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Autorender::Models::FileListResponse
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        file_no: String,
        folder_name: String | nil,
        folder_no: String | nil,
        format_: String | nil,
        height: Integer | nil,
        metadata: ^(Autorender::Internal::Type::HashOf[Autorender::Internal::Type::Unknown]) | nil,
        mime_type: String,
        name: String,
        path: String,
        size: Integer,
        source: String,
        tags: ^(Autorender::Internal::Type::ArrayOf[String]),
        updated_at: Time | nil,
        url: String,
        width: Integer | nil
      }
    end
  end

  def test_delete
    response = @autorender.files.delete("fileNo")

    assert_pattern do
      response => nil
    end
  end

  def test_rename_required_params
    response = @autorender.files.rename("fileNo", name: "name")

    assert_pattern do
      response => Autorender::Models::FileRenameResponse
    end

    assert_pattern do
      response => {
        data: Autorender::Models::FileRenameResponse::Data,
        success: Autorender::Models::FileRenameResponse::Success
      }
    end
  end
end
