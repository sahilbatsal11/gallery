class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :update, :destroy]

  def list
    # @albums = Album.where(user_id: current_user.id)
    @albums = current_user.albums
  end

  def new
    @album = Album.new
  end

  def create
    @album = current_user.albums.build(album_params)
    @album.save
    if @album.errors.any?
      render :new
    else
      redirect_to @album
    end
  end

  def show
  end

  def update

  end

  def destroy

  end

  private
  def album_params
    params.require(:album).permit(:name, :description)
    # params[:album].permit(:name, :description)
  end

  def set_album
    # @album = Album.find_by(id: params[:id], user_id: current_user.id)
    @album = current_user.albums.find_by(id: params[:id])
    unless @album.present?
      flash.alert = "Album not found with id #{params[:id]}"
      # redirect_back(fallback_location: albums_path)
      redirect_to albums_path
    end
  end
end
