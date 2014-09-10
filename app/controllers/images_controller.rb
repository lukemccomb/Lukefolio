class ImagesController < ApplicationController
  def index
  end

  def show
    @image = Image.find(params[:id])
    @new_comment = Comment.new
    @comments = Comment.where(image_id: @image.id).to_a
    # p @comments
  end
end