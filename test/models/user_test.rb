# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:one)
  end

  test "should be valid?" do
    assert @user.valid?
  end

  test 'should not save user without email, name or password' do
    user = User.new
    assert !user.save
  end

  test 'should return user post' do
    u = @user.posts.first
    assert u != nil
  end

end
