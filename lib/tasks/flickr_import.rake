namespace :flickr do
  task :import => :environment do
    flickr = Flickr.new("#{ENV['FLICKR_KEY']}")
    user = flickr.users('lukemccomb')
    user.photos.each do |image|
      p image.url
      @db_image = Image.new
      @db_image.url = "https://farm#{image[:farm]}.staticflickr.com/#{image[:server]}/#{image[:id]}_#{image[:secret]}.jpg"
      @db_image.title = image.title
      @db_image.keywords = "#{image.description}"
      @db_image.caption = "#{image.description}"
      @db_image.save
    end
  end
end