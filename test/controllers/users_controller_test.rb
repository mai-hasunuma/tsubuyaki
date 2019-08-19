require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get eddit" do
    get users_eddit_url
    assert_response :success
  end

  test "should get new" do
    get users_new_url
    assert_response :success
  end

  test "should get index" do
    get users_index_url
    assert_response :success
  end

  test "should get show" do
    get users_show_url
    assert_response :success
  end

end
