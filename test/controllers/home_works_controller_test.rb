require 'test_helper'

class HomeWorksControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @home_work = home_tasks(:one)
    @user = users(:one)

    sign_in @user
  end

  test "should get index" do
    get home_works_url
    assert_response :success
  end

  test "should get new" do
    get new_home_work_url
    assert_response :success
  end

=begin
  test "should create home_work" do
    assert_difference('HomeTask.count') do
      post home_works_url(home_task: { description: @home_work.description, subject: @home_work.subject, day_by_week: Date.parse(data).strftime('%A'),
                                       date_task: data, class_room: @home_work.class_room })
    end

    assert_redirected_to home_work_url(HomeTask.last)
  end
=end

  test "should show home_work" do
    get home_work_url(@home_work)
    assert_response :success
  end

  test "should get edit" do
    get edit_home_work_url(@home_work)
    assert_response :success
  end

  test "should update home_work" do
    patch home_work_url(id: @home_work.id, home_task: {subject: @home_work.subject, description: @home_work.description})
    assert_redirected_to home_work_url(@home_work)
  end

  test "should destroy home_work" do
    assert_difference('HomeTask.count', -1) do
      delete home_work_url(@home_work)
    end

    assert_redirected_to home_works_url
  end
end
