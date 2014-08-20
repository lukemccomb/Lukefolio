class MainController < ApplicationController
  def index
    flickr = Flickr.new("#{ENV['FLICKR_KEY']}")
    user = flickr.users('lukemccomb')
    user.photos.each do |image|
      @db_image = Image.new
      @db_image.url = "https://farm#{image[:farm]}.staticflickr.com/#{image[:server]}/#{image[:id]}_#{image[:secret]}.jpg"
      @db_image.title = image.title
      @db_image.keywords = "#{image.description}"
      @db_image.caption = "#{image.description}"
      @db_image.save
    end

    @photos = Image.all
  end
end

# create .env file
#  add .env file to gitignore
#

# To Do
# API_KEY secret
# make each thumbnail a link to dynamically created image pop-up screen
# title hover functionality
# Make image controller for this stuff
# Need to have a script that runs once a day or once an hour
# that catalogs my flickr images (url, keyowrds, descript) into my images
# table