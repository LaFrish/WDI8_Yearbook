class WdiersController < ApplicationController

  def index
    @wdiers = Wdier.all
  end

  def new
    @wdier = Wdier.new
  end

  def create
    @wdier = Wdier.create!(wdier_params)

    redirect_to wdiers_path(@wdier)
  end

  def show
    @wdier = Wdier.find(params[:id])
    # @wdier = Wdier.where(squad_id: @wdier.squad_id).not(id: @wdier.id).order(:name)
  end


  def edit
    @wdier = Wdier.find(params[:id])
  end

  def update
    @wdier = Wdier.find(params[:id])
    @wdier.update(wdier_params)

    redirect_to wdier_path(@wdier)
  end

  def destroy
    @wdier = Wdier.find(params[:id])
    @wdier.destroy

    redirect_to wdiers_path(@wdier)
  end

  def wdier_params
    params.require(:wdier).permit(:name, :img_url, :squad_name, :squad_id, :quote, :teaching, :memory, :favlang, :wisewords, :tag_list,:github_url, :portfolio_url, :project1_url, :project2_url, :project3_url, :quote, :q1, :q2, :q3, :fb, :linkedin, :email, :role,  :student_id, :instructor_id)
  end
end
