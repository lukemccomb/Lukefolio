class MainController < ApplicationController
  def index
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