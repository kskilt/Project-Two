# frozen_string_literal: true

# ScreensController
class ScreensController < ApplicationController
  before_action :authorize
  def show
    @screen = Screen.find(params[:id])
    @theater = Theater.find(params[:theater_id])
  end

  def index
    @screens = Screen.all
  end

  def new; end
end
