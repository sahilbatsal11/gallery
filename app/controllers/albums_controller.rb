class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :edit, :update, :destroy]

  def list
    # @albums = Album.where(user_id: current_user.id)
    @albums = current_user.albums
  end

  def new
    @album = current_user.albums.new
  end

  def create
    @album = current_user.albums.new(album_params)

    if @album.save
      redirect_to @album, notice: "Created Successfully"
    else
      render :new , alert: "Failed to create"
    end
  end

  def edit
  end

  def show
  end

  def update
    if @album.update(album_params)
      redirect_to @album, notice: "Updated Successfully"
    else
      render :edit
    end
  end

  def destroy
    @album.destroy
    if @album.errors.any?
      flash.alert = @album.errors.full_messages.join(", ")
      redirect_to @album
    else
      flash.notice = "Album Deleted Successfully"
      redirect_to albums_path
    end
  end

  private

  def album_params
    params.require(:album).permit(:name, :description, :images)
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
