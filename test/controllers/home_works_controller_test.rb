require 'test_helper'

class HomeWorksControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get home_works_index_url
    assert_response :success
  end

  test 'should get show' do
    get home_works_show_url
    assert_response :success
  end

  test 'should get edit' do
    get home_works_edit_url
    assert_response :success
  end

  test 'should get destroy' do
    get home_works_destroy_url
    assert_response :success
  end

  test 'should get update' do
    get home_works_update_url
    assert_response :success
  end

  test 'should get new' do
    get home_works_new_url
    assert_response :success
  end

  test 'should get create' do
    get home_works_create_url
    assert_response :success
  end
end
