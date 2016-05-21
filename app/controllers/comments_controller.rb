class PostsController < ApplicationController

  def index
    @comments = Posts.all
  end

  def show
    @wdier = Wdier.find(params[:wdier_id])
    @comment = Post.find(params[:id])
  end

  def edit
    @comment = Post.find(params[:id])
    @wdier = Wdier.find(params[:wdier_id])

  end

  def new
    @comment = Post.new
    @wdier = Wdier.find(params[:wdier_id])


  end

  def create
    @wdier = Wdier.find(params[:wdier_id])
    @comment = Post.new(comment_params)
    @comment = Post.new(params.require(:comment).permit(:task))
    @comment.save
    if @comment.save
      flash[:alert] = "Post created successfully."
      redirect_to comment_params([:wdier_id])
    else
      flash[:alert] = "Error creating comment."
      redirect_to comment_params([:wdier_id])
    end
  end


  def update
    @wdier = Wdier.find(params[:wdier_id])
    @comment = Post.find(params[:id])
    if @comment.wdier == current_wdier
      @comment.update(wdier_params)
    else
      flash[:alert] = "Only the author of the comment can edit it!"
    end
    redirect_to wdier_params(@wdier)
  end

  def destroy
    @wdier = Wdier.find(params[:wdier_id])
    @comment = Post.find(params[:id])
    if @comment.wdier == current_wdier
      @comment.destroy
    else
      flash[:alert] = "Only the author of the comment can delete"
    end
    redirect_to wdier_path(@wdier)
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :body)
  end
end
