class Wdi8sController < ApplicationController

  def index
    @wdi8s = Wdi8.all
  end

  def new
    @wdi8 = Wdi8.new
  end

  def create
    @wdi8 = Wdi8.create!(wdi8_params)

    redirect_to wdi8_path(@wdi8)
  end

  def show
    @wdi8 = Wdi8.find(params[:id])

  end

  def edit
    @wdi8 = Wdi8.find(params[:id])
  end

  def update
    @wdi8 = Wdi8.find(params[:id])
    @wdi8.update(wdi8_params)

    redirect_to wdi8_path(@wdi8)
  end

  def destroy
    @wdi8 = Wdi8.find(params[:id])
    @wdi8.destroy

    redirect_to wdi8_path(@wdi8)
  end

  private
  def wdi8_params
    params.require(:wdi8).permit(:students, :squads, :instructors)
  end
end
