class PhotosController < ApplicationController
  before_action :set_album

  def index
    @photos = @album.photos
  end

  def new
    @photo = @album.photos.build(user_id: current_user.id)
  end

  def create
    @photo = @album.photos.build(user_id: current_user.id)
    @photo.assign_attributes(photos_params)
    if @photo.save
      redirect_to @album, notice: "Created Successfully"
    else
      render :new , alert: "Failed to create"
    end
  end

  private
  def set_album
    # @album = Album.find_by(id: params[:id], user_id: current_user.id)
    @album = current_user.albums.find_by(id: params[:album_id])
    unless @album.present?
      flash.alert = "Album not found with id #{params[:album_id]}"
      # redirect_back(fallback_location: albums_path)
      redirect_to albums_path
    end
  end

  def photos_params
    params.require(:photo).permit(:name, :image)
  end
end
