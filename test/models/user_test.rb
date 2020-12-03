require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'should not save invalid user' do
    user = User.new
    user.save
    refute user.valid?
  end

  test 'should save valid user' do
    user = User.new
    user.email = 'vm00328@surrey.ac.uk'
    user.password = '123456'
    user.save
    assert user.valid?
  end
end
