class SchooldaysController < ApplicationController

  def index
      @schooldays = Schoolday.all
    end

    def new
      @schoolday = Schoolday.new
    end

    def create
      @schoolday = Schoolday.create!(@schoolday_params)

      redirect_to
    end

    def show
      @schoolday = Schoolday.find(params[:id])

    end

    def edit
      @schoolday = Schoolday.find(params[:id])
    end

    def update
      @schoolday = Schoolday.find(params[:id])
      @schoolday.update(@schoolday_params)

      redirect_to
    end

    def destroy
      @schoolday = Schoolday.find(params[:id])
      @schoolday.destroy

      redirect_to
    end

    private
    def @schoolday_params
      params.require(:@schoolday).permit()
    end
  end

end
