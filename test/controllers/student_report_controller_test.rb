require 'test_helper'

class StudentReportControllerTest < ActionDispatch::IntegrationTest
  test "should get integer:student" do
    get student_report_integer:student_url
    assert_response :success
  end

  test "should get string:name" do
    get student_report_string:name_url
    assert_response :success
  end

  test "should get string:body" do
    get student_report_string:body_url
    assert_response :success
  end

  test "should get string:when" do
    get student_report_string:when_url
    assert_response :success
  end

end
