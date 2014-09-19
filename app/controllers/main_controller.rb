class MainController < ApplicationController
  def index
    @user = User.new
    @photos = Image.all
  end

  def info

  end
end
