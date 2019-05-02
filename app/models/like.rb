# frozen_string_literal: true

# Like model
class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates_presence_of :user
end
