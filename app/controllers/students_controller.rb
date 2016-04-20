class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
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
    params.require(:student).permit(:name, :img_url, :github_url, :portfolio_url, :project1_url, :project2_url, :project3_url, :project4_url, :quote, :squad_id, :codey_id, :q1, :q2, :q4, :fb, :linkedin, :email)
  end
end
