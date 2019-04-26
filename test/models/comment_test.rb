require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = comments(:one)
  end

  test 'should valid?' do
    assert @comment.valid?
  end

  test 'should not save post without body' do
    comment = Comment.new
    assert !comment.save
  end
end
