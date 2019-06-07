class SessionsController < ApplicationController
  def new # singin form
  end

  def create # processing the signin
    user = User.find_by(name: params[:users][:name])
    redirect_to(new_session_path) unless user.try(:authenticate, params[:users][:password])

    session[:user_id] = user.id
    redirect_to root_path
  end

  def destroy # logout
    session[:user_id] = nil
    redirect_to new_session_path
  end
end
