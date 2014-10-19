class UsersController < ApplicationController

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    user = current_user
    user.update_attributes(allowed_parameters)
    user.save
    redirect_to user_path(current_user.id)
  end

  private

  def allowed_parameters
    params.require(:user).permit(:name, :email, :password)
  end

end