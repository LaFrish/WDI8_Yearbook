class InstructorsController < ApplicationController

  def index
    @instructors = Instructor.all
    render json: Instructor.all
  end

  def show
    @instructor = Instructor.find(params[:id])

  end
  def new
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.create!(instructor_params)

    redirect_to
  end



  def edit
    @instructor = Instructor.find(params[:id])
  end

  def update
    @instructor = Instructor.find(params[:id])
    @instructor.update(instructor_params)

    redirect_to
  end

  def destroy
    @squad = Instructor.find(params[:id])
    @squad.destroy

    redirect_to
  end

  private
  def instructor_params
    params.require(:instructor).permit(:instructor_id, :name, :img_url, :squad_name, :squad_id)
  end
end
