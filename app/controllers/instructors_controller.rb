class InstructorsController < ApplicationController

  def index
    @instructors = Instructor.all
  end

  def new
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.create!(instructor_params)

    redirect_to instructors_path(@instructor)
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def edit
    @instructor = Instructor.find(params[:id])
  end

  def update
    @instructor = Instructor.find(params[:id])
    @instructor.update(instructor_params)
    redirect_to instructors_path(@instructor)
  end

  def destroy
    @instructor = Instructor.find(params[:id])
    @instructor.destroy
    redirect_to instructors_path(@instructor)
  end

  # def squad
  #   @instructor = Instructor.find(params[:id])
  #   @student = Student.where(squad_id: = :instructor_id)



  private
  def instructor_params
    params.require(:instructor).permit(:name, :img_url, :squad_name, :squad_id, :codey_id, :quote, :teaching, :memory, :favlang, :wisewords)
  end
end
 
