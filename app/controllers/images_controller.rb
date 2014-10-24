class ImagesController < ApplicationController
  def index
  end

  def show
    @image = Image.find(params[:id])
    @keywords = keywords(@image)
    if current_user
      @new_comment = Comment.new
      @comments = Comment.where(image_id: @image.id).to_a
      @new_favorite = Favorite.new
      @favorite = Favorite.where(image_id: @image.id, user_id: current_user.id)
    end
    @user = User.new
  end

  def update
    image = Image.find(params[:id])
    if image.keywords != "{}" && image.keywords != nil
      image.keywords += ", " + params[:image][:keywords]
    else
      image.update_attributes(keywords: params[:image][:keywords])
    end
    image.save!
    redirect_to image_path(params[:id])
  end

  def destroy
    @image = Image.find(params[:id])
    @favorite = Favorite.where(image_id: @image.id, user_id: current_user.id)
    @favorite.destroy_all
    redirect_to image_path(params[:id])
  end

  private

  def keywords image
    string = image.keywords
    keywords = string.split(", ")
  end
end