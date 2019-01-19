require 'test_helper'

class PoctsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poct = pocts(:one)
  end

  test "should get index" do
    get pocts_url
    assert_response :success
  end

  test "should get new" do
    get new_poct_url
    assert_response :success
  end

  test "should create poct" do
    assert_difference('Poct.count') do
      post pocts_url, params: { poct: { body: @poct.body, title: @poct.title, who: @poct.who } }
    end

    assert_redirected_to poct_url(Poct.last)
  end

  test "should show poct" do
    get poct_url(@poct)
    assert_response :success
  end

  test "should get edit" do
    get edit_poct_url(@poct)
    assert_response :success
  end

  test "should update poct" do
    patch poct_url(@poct), params: { poct: { body: @poct.body, title: @poct.title, who: @poct.who } }
    assert_redirected_to poct_url(@poct)
  end

  test "should destroy poct" do
    assert_difference('Poct.count', -1) do
      delete poct_url(@poct)
    end

    assert_redirected_to pocts_url
  end
end
