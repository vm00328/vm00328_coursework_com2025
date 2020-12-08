require 'test_helper'

class ClothingTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
  end

    test "should save valid clothing" do
        clothing = Clothing.new
        clothing.gender = 'Male'
        clothing.brand = 'Nike'
        clothing.category = 'T-Shirt'
        clothing.size = 'L'
        clothing.price = 90.0
        clothing.save
        refute clothing.valid?
    end

    test "should not save empty clothing" do
      clothing = Clothing.new
      clothing.save
      refute clothing.valid?
    end

    test 'should not save clothing if gender is empty' do
      clothing = Clothing.new
      clothing.category = 'T-Shirt'
      clothing.size = 'L'
      clothing.price = 90.0
      clothing.save
      refute clothing.valid?
    end

    test 'should not save clothing if brand is empty' do
      clothing = Clothing.new
      clothing.gender = 'Male'
      clothing.category = 'T-Shirt'
      clothing.size = 'L'
      clothing.price = 90.0
      clothing.save
      refute clothing.valid?
    end

    test 'should not save clothing if category is empty' do
      clothing = Clothing.new
      clothing.gender = 'Male'
      clothing.brand = 'Nike'
      clothing.size = 'L'
      clothing.price = 90.0
      clothing.save
      refute clothing.valid?
    end
    test 'should not save clothing if size is empty' do
    clothing = Clothing.new
    clothing.gender = 'Male'
    clothing.brand = 'Nike'
    clothing.category = 'T-Shirt'
    clothing.price = 90.0
    clothing.save
    refute clothing.valid?
  end

  test "should not save clothing if price is empty" do
      clothing = Clothing.new
      clothing.gender = 'Male'
      clothing.brand = 'Nike'
      clothing.category = 'T-Shirt'
      clothing.size = 'L'
      clothing.save
      refute clothing.valid?
  end
end
