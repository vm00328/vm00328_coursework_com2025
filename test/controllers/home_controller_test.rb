require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  # include Devise::TestHelpers
  test "should get home" do
    get root_url
    assert_response :success
    assert_select 'title', 'Tennis World VM'
  end

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_template layout: 'application'
    assert_select 'title', 'Tennis World VM'
    assert_select 'h2', 'Complete the following form to get in touch with us:'
  end

  test "should post request contact but no email" do
    post request_contact_url
    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

  test "should post request contact" do
    post request_contact_url, params:
    {name: "Vladislav", email: "vm00328@surrey.ac.uk",
      telephone: "0882419521", message: "Hello"}
      assert_response :redirect
      assert_nil flash[:alert]
      assert_not_empty flash[:notice]
    end
end
