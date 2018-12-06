require 'test_helper'

class AuthTest < ActionDispatch::IntegrationTest
  test "try to register log in and browse site" do
    new_pswd = "password"
    new_usr = "login"
    User.create(password: new_pswd, login: new_usr)

    get login_path(login: new_usr, password: new_pswd)
    assert_response :found
    assert_includes @response.headers['Location'], input_url
    get input_path
    assert_response :success
    get output_path(max: 10)
    assert_response :success
    assert_equal 4, assigns[:count]
  end

  test "try not to log in and browse site" do
    get '/'
    assert_response :found
    assert_includes @response.headers['Location'], auth_url
  end
end