require 'test_helper'

class RacquetTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
end

test "should save valid racquet" do
    racquet = Racquet.new
    racquet.brand = 'Babolat'
    racquet.level = 'Intermediate'
    racquet.weight = 300.0
    racquet.save
    refute racquet.valid?
  end

test "should not save empty racquet" do
  racquet = Racquet.new
  racquet.save
  refute racquet.valid?
  end
end
