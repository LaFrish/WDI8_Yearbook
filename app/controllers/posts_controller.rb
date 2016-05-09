class CommentsController < ApplicationController

  def index
    id = params[:student_id]
    @student = Student.find(params[:student_id])
    @comments = Comment.all
    @comments = @student.comments.where(data_type: "comment")
  end

  def show
    @student = Student.find(params[:student_id])
    @comment = Comment.find(params[:id])
  end

  def new
    # @student = Student.find(params[:student_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(params.require(:comment).permit(:task))
    if @comment.save
        redirect_to student_params(@student), alert:"Comment created successfully."
    else
        redirect_to student_params(@student), alert: "Error creating comment."
    end
  end



  def edit
    @student = Student.find(params[:student_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.user == current_user
      @comment.update(student_params)
    else
      flash[:alert] = "Only the author of the comment can edit it!"
    end
    redirect_to student_params(@student)
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.user == current_user
      @comment.destroy
    else
      flash[:alert] = "Only the author of the comment can delete"
    end
    redirect_to student_path(@student)
  end

  private
  def comment_params
    params.require(:comment).permit(:author, :title, :body)
  end
end
