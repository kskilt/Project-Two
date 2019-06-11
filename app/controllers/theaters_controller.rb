class TheatersController < ApplicationController
  before_action :authorize
  def index
    @theaters = Theater.all
  end

  def show
    @theater = Theater.find(params[:id])
  end

  def new
    @theater = Theater.new
  end

  def create
    @theater = Theater.new(theater_params)

    if @theater.save
      redirect_to @theater
    else
      render 'new'
    end
  end


  private
  def theater_params
    params.require(:theater).permit(:name)
  end
end
