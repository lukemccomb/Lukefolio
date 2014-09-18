class User < ActiveRecord::Base
  has_secure_password

  has_many :image_comments
  has_many :comments, through: :image_comments
  has_many :favorites
  has_many :images, through: :favorites

  validates :email, presence: true, uniqueness: {case_sensitive: false}
end