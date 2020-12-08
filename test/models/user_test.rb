require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test 'should save valid user' do
    user = User.new
    user.email = 'vm00328@surrey.ac.uk'
    user.password = '123456'
    user.save
    assert user.valid?
  end

  test 'should not save invalid user' do
    user = User.new
    user.save
    refute user.valid?
  end

  test 'should not save user if email is not provided' do
    user = User.new
    user.password = '123456'
    user.save
    refute user.valid?
  end

  test 'should not save user if password is not provided' do
    user = User.new
    user.email = 'vm00328@surrey.ac.uk'
    user.save
    refute user.valid?
  end
end
