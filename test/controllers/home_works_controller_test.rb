require 'test_helper'

class HomeWorksControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get home_works_url
    assert_response :success
  end

  test 'should get show' do
    get home_work_url
    assert_response :success
  end

  test 'should get edit' do
    get edit_home_works_url
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
    get new_home_works_url
    assert_response :success
  end

  test 'should get create' do
    get home_works_create_url
    assert_response :success
  end
end
