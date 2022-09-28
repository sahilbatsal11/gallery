require "test_helper"

class PhotosControllerTest < ActionDispatch::IntegrationTest
   def upset
      @album = users(:one)
    end

   test "Album list " do
      album = Album.new(name: "test1", description: "This is first testing")
      assert albums_url
   end

   test "Album new " do
      album = Album.new(name: "test1", description: "This is first testing")
      assert albums_url
   end
end
