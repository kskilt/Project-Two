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
    find_showing
    if @showing.save
      redirect_to theater_showings_path
    else
      render 'new'
    end
  end

  def destroy
    find_showing
    @showing.destroy

    redirect_to theaters_showings_path
  end

  private
  def showing_params
    params.require(:showing).permit(:time, :theater_id, :movie_id, :screen_id)
  end
  def find_showing
    @theater = Theater.find(params[:theater_id])
    @showing = Showing.find(params[:id])
  end
end
