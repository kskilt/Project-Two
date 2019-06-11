class ScreensController < ApplicationController
before_action :authorize
  def show
    @screen = Screen.find(params[:id])
  end

  def index
  @screens = Screen.all
  end

  def new
  end
end
