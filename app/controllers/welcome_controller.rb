class WelcomeController < ApplicationController
  before_action :check_if_logged_in

  def index
    @current_user = User.find(session[:user_id])
  end
end
