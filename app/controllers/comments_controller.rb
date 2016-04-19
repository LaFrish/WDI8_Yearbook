class Negative < ActiveRecord::Base

  def index
    @comments = Comments.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create!(post_params)

    redirect_to to student_path(@student)
  end

    def edit
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
