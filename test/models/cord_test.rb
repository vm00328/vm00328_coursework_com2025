require 'test_helper'

class CordTest < ActiveSupport::TestCase
  setup do
    @cord = cords(:one)
end

  test 'should save valid cord' do
    cord = Cord.new
    cord.name = 'My Cord'
    cord.colour = 'orange'
    cord.racquet = @racquet
    cord.save
    refute cord.valid?
  end

  test 'should not save empty cord' do
    cord = Cord.new
    cord.save
    refute cord.valid?
  end

  test 'should not save cord if name is not provided' do
    cord = Cord.new
    cord.racquet = @racquet
    cord.save
    refute cord.valid?
  end

  test 'should not save cord if racquet is not provided' do
    cord = Cord.new
    cord.name = 'My Cord'
    cord.save
    refute cord.valid?
  end

  test 'should not save cord if colour is not provided' do
    cord = Cord.new
    cord.name = 'My Cord'
    cord.racquet = @racquet
    cord.save
    refute cord.valid?
  end
end
