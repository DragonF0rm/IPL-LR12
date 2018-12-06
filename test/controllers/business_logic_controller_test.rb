require 'test_helper'

class BusinessLogicControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get input_path
    assert_response :found
  end

  test "should get output" do
    get output_path
    assert_response :found
  end

end
