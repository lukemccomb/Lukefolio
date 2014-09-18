class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new
    @favorite.image_id = params[:image_id]
    @favorite.user_id = session[:user_id]

    @favorite.save
    redirect_to image_path(id: params[:image_id])
  end

  def show

  end

  def destroy
    @favorite = Favorite.where(image_id: params[:image_id], user_id: session[:user_id])
    @favorite.destroy!
    redirect_to image_path(id: params[:image_id])
  end
end