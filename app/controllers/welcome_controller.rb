# frozen_string_literal: true

# Home page
class WelcomeController < ApplicationController
  before_action :authorize

  def index
    @current_user = User.find(session[:user_id])
  end
end
