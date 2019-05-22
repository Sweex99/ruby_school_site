require 'test_helper'

class RemoteStudyControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @remote_study = remote_studies(:one)
    @user = users(:one)

    sign_in @user
  end

  test "should get index" do
    get remote_study_index_url
    assert_response :success
  end

  test "should create remote_study" do
    assert_difference('RemoteStudy.count') do
      post remote_study_index_url(remote_study: { title: @remote_study.title, body: @remote_study.body })
    end

    assert_redirected_to remote_study_url(RemoteStudy.last)
  end

  test "should show remote_study" do
    get remote_study_url(@remote_study)
    assert_response :success
  end

  test "should get edit" do
    get edit_remote_study_url(@remote_study)
    assert_response :success
  end

=begin
  test "should update remote_study" do
    patch remote_study_url(@remote_study)
    assert_redirected_to remote_study_url(@remote_study)
  end
=end

  # test "should destroy remote_study" do
  #   assert_difference('RemoteStudy.count', -1) do
  #     delete remote_study_url(@remote_study)
  #   end
  #
  #   assert_redirected_to remote_studies_url
  # end
end
