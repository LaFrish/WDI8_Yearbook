class YearbookController < ApplicationController

  def index
    @yearbook = Yearbook.all
  end

  def show
    @yearbook = Yearbook.find(params[:id])
  end

  def new
    @yearbook = Yearbook.new
  end

  def create
    @yearbook = Yearbook.create!(yearbook_params)

    redirect_to yearbook_path(@yearbook)
  end

  def edit
    @yearbook = Yearbook.find(params[:id])
  end

  def update
    @yearbook = Yearbook.find(params[:id])
    @yearbook.update(yearbook_params)
    redirect_to yearbook_path(@yearbook)
  end

  def destroy
    @yearbook = Yearbook.find(params[:id])
    @yearbook.destroy
    redirect_to yearbook_path(@yearbook)
  end

  def attr_accessible
    @photo = Photo.find(params[:id])
  end

  private
  def yearbook_params
    params.require(:yearbook).permit(:photos, :name, :tag_list)
  end
end
