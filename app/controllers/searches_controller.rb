class SearchesController < ApplicationController
  def show
    @search = Search.new(params[:search])
    @user = User.new
  end
end
