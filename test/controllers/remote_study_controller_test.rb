require 'test_helper'

class RemoteStudyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get remote_study_index_url
    assert_response :success
  end

  test "should get show" do
    get remote_study_show_url
    assert_response :success
  end

  test "should get new" do
    get remote_study_new_url
    assert_response :success
  end

  test "should get create" do
    get remote_study_create_url
    assert_response :success
  end

  test "should get edit" do
    get remote_study_edit_url
    assert_response :success
  end

  test "should get update" do
    get remote_study_update_url
    assert_response :success
  end

  test "should get destroy" do
    get remote_study_destroy_url
    assert_response :success
  end

end
