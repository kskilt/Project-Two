# frozen_string_literal: true

# Shows movie listings at theaters
class ShowingsController < ApplicationController
  before_action :authorize
  before_action :set_theater, only: %i[new create edit index]

  def set_theater
    @theater = Theater.find(params[:theater_id])
  end

  def index
    set_theater
    @showing = Showing.new
    @showings = Showing.search(params[:search])
  end

  def show
    @showing = Showing.find(params[:id])
  end

  def new
    @showing = Showing.new
  end

  def create
    # render_to that specifies different format
    @showing = Showing.create(showing_params)
    @showing.theater = @theater
    if @showing.save
      # binding.pry
      respond_to do |format|
        format.html {redirect_to theater_showings_path}
        format.json do
          render json: @showing
        end
      end
    else
      render "index"
    end
  end

  def edit
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
    @showing = Showing.find(params[:id])
    @showing.destroy

    redirect_to theater_showings_path
  end

private

  def showing_params
    params.require(:showing).permit(:time, :theater_id, :movie_id, :screen_id)
  end
end
