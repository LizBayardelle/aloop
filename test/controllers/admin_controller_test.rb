require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get blogs" do
    get admin_blogs_url
    assert_response :success
  end

  test "should get resources" do
    get admin_resources_url
    assert_response :success
  end

  test "should get subcategories" do
    get admin_subcategories_url
    assert_response :success
  end

  test "should get subscribers" do
    get admin_subscribers_url
    assert_response :success
  end

end
