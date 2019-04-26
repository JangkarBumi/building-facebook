require 'test_helper'

class LikeTest < ActiveSupport::TestCase
  def setup
    @like = likes(:one)
  end

  test 'should valid?' do
    assert @like.valid?
  end

  test 'should not save like without user & post references' do
    like = Like.new
    assert !like.save
  end
end