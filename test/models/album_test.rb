require "test_helper"

class AlbumTest < ActiveSupport::TestCase
  def setup
    @user = users(:two)
  end

  test "should be created album with name and description" do
    album = Album.new(name: "test1", description: "This is first testing")
    assert album.save
  end

  test "should not  save albums without a description" do
    album = Album.new
    album.description = nil
    assert_not album.save, "Saved the album without a description"
  end
  
end