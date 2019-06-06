class WelcomeController < ApplicationController
  def hello
    if session[:name]
      render 'index'
    else
      redirect_to controller: 'sessions', action: 'new'
    end
  end
  def index
  end
end
