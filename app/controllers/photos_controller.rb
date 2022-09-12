class PhotosController < ApplicationController
  before_action :set_album
  before_action :set_photo, only: [:show]

  def index
    @photos = @album.photos
  end

  def new
    @photo = @album.photos.build(user_id: current_user.id)
  end

  def show
  end

  # def create
  #   # @photo = @album.photos.build(user_id: current_user.id)
  #   # @photo.assign_attributes(photos_params)
  #   # if @photo.save
  #   #   redirect_to @album, notice: "Created Successfully"
  #   # else
  #   #   render :new , alert: "Failed to create"
  #   # end
  #   images = params[:photo][:image]
  #   if images.present?
  #     error_messages = []
  #     Array(images).each do |image|
  #       @photo = @album.photos.build(user_id: current_user.id)
  #       @photo.assign_attributes(photos_params)
  #       @photo.image = image
  #       if !@photo.save
  #         error_messages << @photo.errors.full_messages.join(", ")
  #       end
  #     end

  #     if error_messages.present?
  #       # redirect_to @album, alert: "Some or all photos upload failed"
  #       redirect_to @album, alert: error_messages.uniq.join(", :")
  #     else
  #       redirect_to @album, notice: "Created Successfully"
  #     end
  #   else
  #     render :new , alert: "No image selected"
  #   end
  # end

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

  def set_photo
    @photo = @album.photos.find_by(id: params[:id])
    unless @photo.present?
      flash.alert = "Photo not found with id #{params[:id]}"
      # redirect_back(fallback_location: albums_path)
      redirect_to @album
    end
  end

  def photos_params
    params.require(:photo).permit(:name, :image, images: [])
  end
end
