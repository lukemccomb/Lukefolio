class ImageFavorite < ActiveRecord::Base

  belongs_to :user
  belongs_to :image

end