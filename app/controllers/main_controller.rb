class MainController < ApplicationController
  def index
    @user = User.new
    @photos = Image.all
  end
end
