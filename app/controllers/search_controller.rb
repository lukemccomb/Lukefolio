class SearchController < ApplicationController


  def search
    @images = Image.all
    @images = Image.search params[:query]
    p params[:query]
  end
end
