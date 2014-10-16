class Image < ActiveRecord::Base

  has_many :image_comments
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites

  validates :url, uniqueness: true

  def self.search term
    images = Image.where("keywords LIKE ?", "%#{term}%")
    where(content_type: 'Image', content_id: images)
  end
end
