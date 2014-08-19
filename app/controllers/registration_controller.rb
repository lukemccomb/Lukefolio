class RegistrationController < ApplicationController
  def create
    @user = User.new
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.save
    redirect_to root_path
  end
end