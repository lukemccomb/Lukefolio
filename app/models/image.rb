class Image < ActiveRecord::Base

  has_many :image_comments
  has_many :comments
  has_many :favorites
  has_many :users, through: :favorites

  validates :url, uniqueness: true

end
