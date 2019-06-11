class ShowingsController < ApplicationController
before_action :authorize
  def index
    @showings = Showing.all
  end
  def show
    @showing = Showing.find(params[:id])
  end

  def new
    @theater = Theater.find(params[:theater_id])
    @showing = Showing.new
  end

  def create
    @theater = Theater.find(params[:theater_id])
    @showing = Showing.new(showing_params)

    if @showing.save
      redirect_to @showing
    else
      render 'new'
    end
  end

  private
  def showing_params
    params.require(:showing).permit(:time, :theater_id, :movie_id, :screen_id)
  end
end
