require "test_helper"

class PhotoTest < ActiveSupport::TestCase
  def setup
    @user = users(:one)
  end

  test "should not upload the image without a description" do
    album = Album.new
    album.description = nil
    assert_not album.save, "upload the album without a description"
  end

  # test "should not belongs photos without user" do
  #   album = Album.new
  #   assert_not album.save, ""
  # end
end
