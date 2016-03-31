# to run this task from the CLI on heroku, 'heroku run rake flickr:import FLICKR_KEY=XXXXXXXXXXXXXXXXX'

namespace :flickr do

  def import_photos(photos)
    photos.each do |image|
      p image
      @db_image = Image.new
      @db_image.url = "https://farm#{image[:farm]}.staticflickr.com/#{image[:server]}/#{image[:id]}_#{image[:secret]}.jpg"
      @db_image.thumb = "https://farm#{image[:farm]}.staticflickr.com/#{image[:server]}/#{image[:id]}_#{image[:secret]}_q.jpg"
      @db_image.title = image.title
      @db_image.keywords = "#{image.description}"
      @db_image.caption = "#{image.description}"
      @db_image.save
    end
  end

  task :import => :environment do
    flickr = Flickr.new("#{ENV['FLICKR_KEY']}")
    user = flickr.users('lucas.mccomb')
    page_number = 1

    photo_collection = user.photos(per_page: 100, page: page_number)

    number_pages = photo_collection.pages

    import_photos(photo_collection)

    while page_number < number_pages.to_i
      page_number += 1
      photo_collection = user.photos(per_page: 100, page: page_number)
      import_photos(photo_collection)
    end
  end
end
