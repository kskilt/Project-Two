# frozen_string_literal: true

# Controls theaters
class TheatersController < ApplicationController
  before_action :authorize
  def index
    @theaters = Theater.all
  end

  def show
    @theater = Theater.find(params[:id])
  end
end
