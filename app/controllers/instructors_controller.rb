class InstructorsController < ApplicationController

  def index
    @wdiers = Wdier.all
    @instructors = Wdier.where(role: "Instructor")

  end

  # def new
  #   @instructor = Instructor.new
  # end

  # def create
  #   @instructor = Instructor.create!(instructor_params)
  #
  #   redirect_to instructors_path(@instructor)
  # end

  def show
    @wdier = Wdier.find(params[:id])
    # @instructor = Wdier.instructor.find(params[:id])
    @instructor = Wdier.where(role: "Instructor")
    @student = Wdier.student.where(squad_id: @instructor.squad_id)
  end

  def edit
    @instructor = Wdier.instructor.find(params[:id])
  end

  def update
    @instructor = Instructor.find(params[:id])
    @instructor.update(instructor_params)
    redirect_to wdier_instructor_path(@instructor)
  end

  def destroy
    @instructor = Instructor.find(params[:id])
    @instructor.destroy
    redirect_to wdier_instructors_path(@instructor)
  end

  # def squad
  #   @instructor = Instructor.find(params[:id])
  #   @student = Student.where(squad_id: = :instructor_id)

  def photos
    @instructor = @instructor.photos.find(params[:id])
  end

  private
  def instructor_params
    params.require(:instructor).permit(:name, :img_url, :squad_name, :squad_id, :codey_id, :quote, :teaching, :memory, :favlang, :wisewords, :tag_list)
  end
end
