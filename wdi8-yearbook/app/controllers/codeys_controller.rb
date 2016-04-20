class CodeysController < ApplicationController

  def index
    @codeys = Codey.all
    respond_to do |format|
      format.html
      format.json{render status: 200, json: @codeys }
    end
  end

  def new
    @codey = Codey.new
  end

  def create
    @codey = Codey.find(params[:id])
    @codey = Codey.create!(codey_params)

    redirect_to codey_path(@codey)
  end

  def show
    @codey = Codey.find(params[:id])
    render status: 200, json: @codey

  end

  def edit
    @codey = Codey.find(params[:id])
  end

  def update
    @codey = Codey.find(params[:id])

    redirect_to codey_path(@codey)
  end

  def destroy
    @codey = Codey.find(params[:id])
    @codey.destroy

    redirect_to codey_path(@codey)
  end

  private
  def codey_params
    params.require(:codey).permit(:codey_id, :name, :award, :student_id)
  end
end
