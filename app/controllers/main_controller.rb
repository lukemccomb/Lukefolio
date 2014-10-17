class MainController < ApplicationController
  def index
    @user = User.new
    @photos = Image.all
  end

  def info
    @user = User.new
  end
end
