require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'valid post' do
  post = Post.new(body: "I'm a post", user_id: 1)
  assert post.valid?
  end
  
  test 'should not save post without body' do
  post = Post.new
  assert !post.save
  end
end
