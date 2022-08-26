class AlbumsController < ApplicationController
    def list
    end

    def new
        @album = Album.new
    end
end
