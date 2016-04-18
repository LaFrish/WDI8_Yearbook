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
    @img_url = @instructor.img_url

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
    @squad = Instructor.find(params[:id])
    @squad.destroy
    redirect_to instructors_path(@instructor)
  end

  private
  def instructor_params
    params.require(:instructor).permit(:name, :img_url, :squad_name)
  end
end
