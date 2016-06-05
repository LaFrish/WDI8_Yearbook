class TagsController < ApplicationController
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  acts_as_taggable_on :name

  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
  end


  def create
    @tag = Tag.create!(tag_params)

    redirect_to
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])
    @tag.update(tag_params)

    redirect_to
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy

    redirect_to
  end

  private
  def tag_params
        params.require(:tag).permit(:name, :tag_list, :photo_id)
      end
    end
  end
end
