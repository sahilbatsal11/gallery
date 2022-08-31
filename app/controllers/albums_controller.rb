class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :update, :destroy]

  def list
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.create(album_params)
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
    @album = Album.find_by(id: params[:id])
  end
end
