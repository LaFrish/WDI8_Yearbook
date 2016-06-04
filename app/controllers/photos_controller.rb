class PhotosController < ApplicationController


  def index
    @photos = Photo.all
    @photos = Photo.paginate(:page => params[:page])
    # if params[:tag]
    #   @photos = Photo.tagged_with(params[:tag])
    # else

    end
  # end

  def show
    @photo = Photo.find(params[:id])
    @photo = Photo.paginate(:page => params[:page])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create!(photo_params)
    if @photo.save
      flash[:success] = "The photo was added"

    redirect_to photo_path(@photo)
  else
    render 'new'
  end
end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
     @photo.update!(photo_params)
    else
      redirect_to photo_path(@photo)
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    redirect_to photos_path(@photo)
  end

  def attr_accessible
    @photo = Photo.find(params[:id])
  end



  private
  def photo_params
    params.require(:photo).permit( :caption, :img_url, :tag_list, :all_tags)
  end
end
