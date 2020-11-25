require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success
    assert_select 'title', 'Sofia Open'
    assert_select 'h1', 'A website for my com2025 coursework.'
    assert_select 'h2', 'Sofia Open Tennis Tournament'
    assert_select 'h3', 'Welcome to my website!'
  end
end
