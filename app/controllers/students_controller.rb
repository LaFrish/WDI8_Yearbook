class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create!(student_params)

    redirect_to
  end

  def show
    @student = Student.find(params[:id])

  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)

    redirect_to
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    redirect_to
  end

  private
  def student_params
    params.require(:student).permit(:id, :name, :img_url, :instructor_id, :squad_id, :github_url, :portfolio_url, :project1_url, :project2_url, :project3_url, :project4_url, :quote)
  end
end
