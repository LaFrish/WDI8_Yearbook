class CommentsController < ActiveRecord::Base

  def index
    # @student = Student.find(params[:student_id])
    @comments = Comment.all
    # @comments = @student.comments.where(data_type: "comment")
  end

  def show
    # @student = Student.find(params[:student_id])
    @comment = Comment.find(params[:id])
  end

  def new
    # @student = Student.find(params[:student_id])
    @comment = Comment.new
  end

  def create
    @comment = Commment.create!(comment_params.merge(user: current_user))
    redirect_to comment_path(@post)
    # @comment = @student.comments.create!(comment_params)
    # redirect_to to student_path(@student)
  end

  def edit
    # @student = Student.find(params[:student_id])
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
