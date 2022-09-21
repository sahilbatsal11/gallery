require "test_helper"

class AlbumTest < ActiveSupport::TestCase
  def setup
    @user = users(:one)
  end

  test "should be created album with name and description" do
    album = @user.albums.new(name: "test1", description: "This is first testing")
    assert album.save
  end
end
