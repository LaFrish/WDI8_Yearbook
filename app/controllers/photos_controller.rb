class PhotoController < ApplicationController

  def index
    if params[:tag]
      @photos = Photo.tagged_with(params[:tag])
    else
      @photos = Photo.all
    end
  end

  def show
    @photos = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create!(photo_params)

    redirect_to photo_path(@photo)
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    @photo.update(photo_params)
    redirect_to photo_path(@photo)
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photo_path(@photo)
  end

  private
  def photo_params
    params.require(:photo).permit(:img_url, :tag_list)
  end
end
