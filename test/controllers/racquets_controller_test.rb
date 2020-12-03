require 'test_helper'

class RacquetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @racquet = racquets(:one)
  end

  test "should get index" do
    get racquets_url
    assert_response :success
  end

  test "should get new" do
    get new_racquet_url
    assert_response :success
  end

  test "should create racquet" do
    assert_difference('Racquet.count') do
      post racquets_url, params: { racquet: { brand: @racquet.brand, level: @racquet.level, weight: @racquet.weight } }
    end

    assert_redirected_to racquet_url(Racquet.last)
  end

  test "should show racquet" do
    get racquet_url(@racquet)
    assert_response :success
  end

  test "should get edit" do
    get edit_racquet_url(@racquet)
    assert_response :success
  end

  test "should update racquet" do
    patch racquet_url(@racquet), params: { racquet: { brand: @racquet.brand, level: @racquet.level, weight: @racquet.weight } }
    assert_redirected_to racquet_url(@racquet)
  end

  test "should destroy racquet" do
    assert_difference('Racquet.count', -1) do
      delete racquet_url(@racquet)
    end

    assert_redirected_to racquets_url
  end
end
