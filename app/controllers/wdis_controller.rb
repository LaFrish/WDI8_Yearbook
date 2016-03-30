class WdisController < ApplicationController

  def index
    @wdis = Wdi.all
  end

  def new
    @wdi = Wdi.new
  end

  def create
    @wdi = Wdi.create!(wdi_params)

    redirect_to wdis_path(@wdi)
  end

  def show
    @wdi = Wdi.find(params[:id])

  end

  def edit
    @wdi = Wdi.find(params[:id])
  end

  def update
    @wdi = Wdi.find(params[:id])
    @wdi.update(wdi_params)

    redirect_to wdi_path(@wdi)
  end

  def destroy
    @wdi = Wdi.find(params[:id])
    @wdi.destroy

    redirect_to wdis_path
  end

  private
  def wdi_params
    params.require(:wdi).permit()
  end
end
