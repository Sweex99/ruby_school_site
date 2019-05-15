require 'test_helper'

class RemoteStudyControllerTest < ActionDispatch::IntegrationTest
  setup do
    @remote_study = remote_studies(:one)
  end

  test "should get index" do
    get remote_studies_url
    assert_response :success
  end

  test "should get new" do
    get new_remote_study_url
    assert_response :success
  end

  test "should create remote_study" do
    assert_difference('RemoteStudy.count') do
      post remote_studies_url, params: { remote_study: {  } }
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

  test "should update remote_study" do
    patch remote_study_url(@remote_study), params: { remote_study: {  } }
    assert_redirected_to remote_study_url(@remote_study)
  end

  test "should destroy remote_study" do
    assert_difference('RemoteStudy.count', -1) do
      delete remote_study_url(@remote_study)
    end

    assert_redirected_to remote_studies_url
  end
end
