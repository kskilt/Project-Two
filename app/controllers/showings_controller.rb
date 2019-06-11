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
    @showing = Showing.create(showing_params)
    if @showing.save
      redirect_to theater_showings_path
    else
      render 'new'
    end
  end

  def edit
    @theater = Theater.find(params[:theater_id])
    @showing = Showing.find(params[:id])
  end

  def update
    @showing = Showing.find(params[:id])
    if @showing.update(showing_params)
      redirect_to theater_showings_path
    else
      render "edit"
    end
  end

  def destroy
    @theater = Theater.find(params[:theater_id])
    @showing = Showing.find(params[:id])
    @showing.destroy

    redirect_to theater_showings_path
  end

  private
  def showing_params
    params.require(:showing).permit(:time, :theater_id, :movie_id, :screen_id)
  end

end
