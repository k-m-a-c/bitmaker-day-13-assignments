class PhotosController < ApplicationController

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      redirect_to welcome_index_path
    else
      render 'new'
    end

  end

  def update
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    redirect_to welcome_index_path
  end

  private
  def photo_params
      params.require(:photo).permit(:title, :author, :url)
  end

end
