require 'test_helper'

class HomeWorksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home_work = home_tasks(:one)
  end

  test "should get index" do
    get home_works_url
    assert_response :success
  end

  test "should get new" do
    get new_home_work_url
    assert_response :success
  end

  test "should create home_work" do
    assert_difference('HomeTask.count') do
      post home_works_url, params: { home_work: {  } }
    end

    assert_redirected_to home_work_url(HomeTask.last)
  end

  test "should show home_work" do
    get home_work_url(@home_work)
    assert_response :success
  end

  test "should get edit" do
    get edit_home_work_url(@home_work)
    assert_response :success
  end

  test "should update home_work" do
    patch home_work_url(@home_work), params: { home_work: {  } }
    assert_redirected_to home_work_url(@home_work)
  end

  test "should destroy home_work" do
    assert_difference('HomeTask.count', -1) do
      delete home_work_url(@home_work)
    end

    assert_redirected_to home_works_url
  end
end
