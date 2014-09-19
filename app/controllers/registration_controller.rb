class RegistrationController < ApplicationController
  def create
    @user = User.new
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    if @user.save
      redirect_to root_path
    else
      render 'main/index'
    end
  end
end