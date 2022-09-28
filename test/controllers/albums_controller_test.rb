require "test_helper"

class AlbumsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @album = users(:one)
  end

  test "list album " do
    @album
    assert albums_url
  end
  
  test "Album new"
    get albums_url
    assert_response :success
  end

  test "Album show" do
    sign_in users(:user1)
    get albums_url(@album)
    assert_response :success
  end

  test "should get create" do
    post albums_path, params:{ album: {name:@nil.name ,description: @album.description } }
    # assert_response :success
    assert_redirect_to albums_url(Album.last)
  end
  
  test "should destroy album" do
    sign in users(:user1)
    assert_difference('Album.count', -1) do
      delete albums_url(@album)
    assert_redirected_to root_path
  end
end
