require 'elasticsearch'
require 'elasticsearch/model'

class Image < ActiveRecord::Base

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  has_many :image_comments
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites

  validates :url, uniqueness: true


end


#
# settings index: { number_of_shards: 1 } do
#   mappings dynamic: 'false' do
#     indexes :title, analyzer: 'english'
#     indexes :keywords, analyzer: 'english'
#   end
# end
#
# self.import
#
# def as_indexed_json
#   self.as_json({
#                  only: [:title, :keywords],
#                })
# end
