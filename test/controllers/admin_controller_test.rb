require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get mentorrq" do
    get :mentorrq
    assert_response :success
  end

end
