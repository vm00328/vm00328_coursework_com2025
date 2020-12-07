require 'test_helper'

class CordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cord = cords(:one)
  end

  test "should get index" do
    get cords_url
    assert_response :success
  end

  test "should get new" do
    get new_cord_url
    assert_response :success
  end

  test "should create cord" do
    assert_difference('Cord.count') do
      post cords_url, params: { cord: { colour: @cord.colour, name: @cord.name, racquet_id: @cord.racquet_id } }
    end

    assert_redirected_to cord_url(Cord.last)
  end

  test "should show cord" do
    get cord_url(@cord)
    assert_response :success
  end

  test "should get edit" do
    get edit_cord_url(@cord)
    assert_response :success
  end

  test "should update cord" do
    patch cord_url(@cord), params: { cord: { colour: @cord.colour, name: @cord.name, racquet_id: @cord.racquet_id } }
    assert_redirected_to cord_url(@cord)
  end

  test "should destroy cord" do
    assert_difference('Cord.count', -1) do
      delete cord_url(@cord)
    end

    assert_redirected_to cords_url
  end
end
