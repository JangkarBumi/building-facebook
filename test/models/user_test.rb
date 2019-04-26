require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'valid user' do
    user = User.new(name: 'John', email: 'john@example.com', password: 'foobar')
    assert user.valid?
  end

  test 'should not save user without email, name or password' do
    user = User.new
    assert !user.save
  end
end
