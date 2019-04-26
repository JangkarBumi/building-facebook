# frozen_string_literal: true

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = posts(:one)
  end

  test 'should valid?' do
    assert @post.valid?
  end

  test 'should not save post without body' do
    post = Post.new
    assert !post.save
  end
end
