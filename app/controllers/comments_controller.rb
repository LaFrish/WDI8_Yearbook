class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def new
    @wdier = Wdier.find(params[:wdier_id])
    @comment = Comment.new

  end

  def create
    @wdier = Wdier.find(params[:wdier_id])
    @comment = Comment.create!(comment_params)
    @comment = Comment.new(params.require(:comment).permit(:task))
    @comment.save
    if @comment.save
      flash[:alert] = "Comment created successfully."
      redirect_to comment_params([:wdier_id])
    else
      flash[:alert] = "Error creating comment."
      redirect_to comment_params([:wdier_id])
    end
  end


  def update
    @comment = Comment.find(params[:id])
    if @comment.wdier == current_wdier
      @comment.update(wdier_params)
    else
      flash[:alert] = "Only the author of the comment can edit it!"
    end
    redirect_to wdier_params(@wdier)
  end

  def destroy
    @comment = Comment.find(params[:id])
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
