require 'test_helper'

class ShowUserControllerTest < ActionDispatch::IntegrationTest

  setup do
    @user = users(:one)
  end

  test "should get show" do
    get show_user_show_url(id: @user.id)
    assert_response :success
  end

end
