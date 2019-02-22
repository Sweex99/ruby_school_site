require 'test_helper'

class ShowUserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get show_user_index_url
    assert_response :success
  end

  test "should get show" do
    get show_user_show_url
    assert_response :success
  end

  test "should get edit" do
    get show_user_edit_url
    assert_response :success
  end

  test "should get update" do
    get show_user_update_url
    assert_response :success
  end

  test "should get destroy" do
    get show_user_destroy_url
    assert_response :success
  end

  test "should get create" do
    get show_user_create_url
    assert_response :success
  end

  test "should get new" do
    get show_user_new_url
    assert_response :success
  end

end
