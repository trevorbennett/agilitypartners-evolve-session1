require 'test_helper'

class UserlandControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get userland_login_url
    assert_response :success
  end

  test "should get logout" do
    get userland_logout_url
    assert_response :success
  end

end
