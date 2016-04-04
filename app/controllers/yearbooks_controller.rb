class YearbooksController < ApplicationController

  def index
      @yearbooks = Yearbook.all
    end

    def show
      @yearbook = Yearbook.find(params[:id])

    end

    def new
      @yearbook = Yearbook.new
    end

    def create
      @yearbook = Yearbook.create!(yearbook_params)

      redirect_to 
    end



    def edit
      @yearbook = Yearbook.find(params[:id])
    end

    def update
      @yearbook = Yearbook.find(params[:id])
      @yearbook.update(yearbook_params)

      redirect_to
    end

    def destroy
      @yearbook = Yearbook.find(params[:id])
      @yearbook.destroy

      redirect_to
    end

    private
    def yearbook_params
      params.require(:yearbook).permit()
    end
  end

end
