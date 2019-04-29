require 'test_helper'

class FriendshipTest < ActiveSupport::TestCase
  def setup
    @friendship = friendships(:one)
  end

  test 'should valid?' do
    assert @friendship.valid?
  end

  test 'should not save friend request without user_id & friend_id' do
    friendship = Friendship.new
    assert !friendship.save
  end
end
