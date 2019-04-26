class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :body, presence: true
  has_many :likes
end
