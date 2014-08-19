class Image < ActiveRecord::Base
  validates :url, uniqueness: true
end
