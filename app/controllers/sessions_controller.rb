class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      @user = User.new(email: params[:user][:email])
      @user.errors[:base] << "Username / password is invalid"
      render :new
    end
  end

  def destroy
    session.destroy
    redirect_to signin_path
  end

end