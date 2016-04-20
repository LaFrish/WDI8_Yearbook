class CommentsController < ActiveRecord::Base

  def index
    @student = Student.find(params[:student_id])
    @comments = Comment.all
    @comments = @student.comments.where(data_type: "comment")
  end

  def show
    @student = Student.find(params[:student_id])
    @comment = Comment.find(params[:id])
  end

  def new
    @student = Student.find(params[:student_id])
    @comment = Comment.new
  end

  def create
    @student = Student.find(params[:student_id])
    @comment = @student.comments.create!(comment_params)

    redirect_to to student_path(@student)
  end

    def edit
      @student = Student.find(params[:student_id])
      @comment = Comment.find(params[:id])
    end

    def update
        @comment = Comment.find(params[:id])
        @comment.update(student_params)
        redirect_to student_params(@student)
      end

      def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_to student_path(@student)
      end

      private
      def comment_params
        params.require(:comment).permit(:author, :title, :body)
