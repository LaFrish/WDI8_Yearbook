class StudentsController < ApplicationController

  def index
    @students = Student.all
    # respond_to do |format|
    #   format.html
    #   format.json{render status: 200, json: @students }
    # end
  end

  def show
    @student = Student.find(params[:id])
    @imgs = @student.where(data_type: "img")
    @posts = @student.where(data_type: "post")
    render status: 200, json: @student
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create!(student_params)

    redirect_to students_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to students_path(@student)
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path(@student)
  end

  private
  def student_params
    params.require(:student).permit(:name, :img_url, :github_url, :portfolio_url, :project1_url, :project2_url, :project3_url, :project4_url, :quote)
  end
end
