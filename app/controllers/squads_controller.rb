class SquadsController < ApplicationController

  def index
    @squads = Squad.all
  end

  # def new
  #   @squad = Squad.new
  # end
  #
  # def create
  #   @squad = Squad.create!(squad_params)
  #
  #   redirect_to
  # end

  def show
    @squad = Squad.find(params[:id])

  end

  def edit
    @squad = Squad.find(params[:id])
  end

  def update
    @squad = Squad.find(params[:id])
    @squad.update(squad_params)

    redirect_to squad_path
  end

  def destroy
    @squad = Squad.find(params[:id])
    @squad.destroy

    redirect_to squad_path
  end


  def squad_params
    params.require(:squad).permit(:squad_id, :squad_name)
  end
end
