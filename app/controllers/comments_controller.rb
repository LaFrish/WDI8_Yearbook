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
    # @student = Student.find(params[:student_id])
    # @instructor = Instructor.find(params[:instructor_id])
    @comment = Comment.new

  end

  def create
    # @student = Student.find(params[:student_id])
    @comment = Comment.create!(comment_params)
    @comment = Comment.new(params.require(:comment).permit(:task))
    @comment.save
    if @comment.save
      flash[:alert] = "Comment created successfully."
        redirect_to comment_params([:student_id])
    else
        flash[:alert] = "Error creating comment."
        redirect_to comment_params([:student_id])
    end
  end

  #
  # def update
  #   @comment = Comment.find(params[:id])
  #   if @comment.user == current_user
  #     @comment.update(student_params)
  #   else
  #     flash[:alert] = "Only the author of the comment can edit it!"
  #   end
  #   redirect_to student_params(@student)
  # end
  #
  # def destroy
  #   @comment = Comment.find(params[:id])
  #   if @comment.user == current_user
  #     @comment.destroy
  #   else
  #     flash[:alert] = "Only the author of the comment can delete"
  #   end
  #   redirect_to student_path(@student)
  # end

  private
  def comment_params
    params.require(:comment).permit(:author, :title, :body)
  end
end
