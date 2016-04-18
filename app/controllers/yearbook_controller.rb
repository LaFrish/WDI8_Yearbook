class YearbookController < ApplicationController

  def index
    # @student = Student.find(params[:student_id])
    # @instructor = Instructor.find(params[:instructor_id])
    @yearbook = Yearbook.all

    # respond_to do |format|
    #   format.html
    #   format.json{render status: 200, json: @yearbooks }
    # end
  end

  def show
    @yearbook = Yearbook.find(params[:id])
    # render status: 200, json: @yearbook
  end

  def new
    @yearbook = Yearbook.new
  end

  def create
    @yearbook = Yearbook.create!(yearbook_params)

    redirect_to yearbook_path(@yearbook)
  end

  def edit
    @yearbook = Yearbook.find(params[:id])
  end

  def update
    @yearbook = Yearbook.find(params[:id])
    @yearbook.update(yearbook_params)
    redirect_to yearbook_path(@yearbook)
  end

  def destroy
    @yearbook = Yearbook.find(params[:id])
    @yearbook.destroy
    redirect_to yearbook_path(@yearbook)
  end
end
