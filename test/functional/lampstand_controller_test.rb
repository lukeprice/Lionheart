require 'test_helper'

class LampstandControllerTest < ActionController::TestCase
  test "should get content" do
    get :content
    assert_response :success
  end

  test "should get images" do
    get :images
    assert_response :success
  end

  test "should get banners" do
    get :banners
    assert_response :success
  end

end
