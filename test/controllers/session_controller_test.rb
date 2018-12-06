require 'test_helper'

class SessionControllerTest < ActionDispatch::IntegrationTest
  test "should get auth" do
    get auth_path
    assert_response :success
  end

end
