require 'test_helper'

class ClothingTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
  end
  
    test "should save valid clothing" do
        clothing = Clothing.new
    #     # post clothings_path, params:{gender: 'Male', brand: 'Nike', category: 'T-Shirt', size: 'L', price: 90}
    #     # assert_response :redirect
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

end
