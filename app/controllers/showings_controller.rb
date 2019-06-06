class ShowingsController < ApplicationController

  def index
    @showings = Showing.all
  end
  def show
    @showing = Showing.find(params[:id])
  end

  def new
    @showing = Showing.new
  end

  def create
    @showing = Showing.new(showing_params)

    if @showing.save
      redirect_to @showing
    else
      render 'new'
    end
  end

  private
  def showing_params
    params.require(:showing).permit(:time, :theater_id, :movie_id)
  end
end
