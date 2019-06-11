# frozen_string_literal: true

# Allows users to sign up
class UsersController < ApplicationController
  # Signup form
  def new
    @user = User.new
  end

  # process the signup
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render new_user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
