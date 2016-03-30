class CodeysController < ApplicationController

  def index
    @codeys = Codey.all
  end

  def new
    @codey = Codey.new
  end

  def create
    @codey = Codey.create!(codey_params)

    redirect_to
  end

  def show
    @codey = Codey.find(params[:id])

  end

  def edit
    @codey = Codey.find(params[:id])
  end

  def update
    @codey = Codey.find(params[:id])

    redirect_to
  end

  def destroy
    @codey = Codey.find(params[:id])
    @codey.destroy

    redirect_to
  end

  private
  def codey_params
    params.require(:codey).permit()
  end
end
