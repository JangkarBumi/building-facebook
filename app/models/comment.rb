# frozen_string_literal: true

# Comment model
class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :body, presence: true
  validates_presence_of :user
end
