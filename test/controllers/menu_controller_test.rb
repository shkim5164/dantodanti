require 'test_helper'

class MenuControllerTest < ActionController::TestCase
  test "should get main" do
    get :main
    assert_response :success
  end

  test "should get mentoring" do
    get :mentoring
    assert_response :success
  end

  test "should get ranking" do
    get :ranking
    assert_response :success
  end

  test "should get execution" do
    get :execution
    assert_response :success
  end

end
