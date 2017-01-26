require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get loginpage" do
    get :loginpage
    assert_response :success
  end

  test "should get loginuser" do
    get :loginuser
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get remove_session" do
    get :remove_session
    assert_response :success
  end

end
