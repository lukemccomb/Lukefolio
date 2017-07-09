class PhotoController < ApplicationController
  def index
    @user = User.new
    @photos = Image.all
  end

  def gallery
    @user = User.new
    @photos = Image.all
  end
end
