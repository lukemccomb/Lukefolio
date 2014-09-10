class Comment < ActiveRecord::Base

  belongs_to :image
  belongs_to :user

  validates :comment, presence: { message: "Please fill in a comment."}
end