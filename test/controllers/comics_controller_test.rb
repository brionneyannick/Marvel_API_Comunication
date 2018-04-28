require 'test_helper'

class ComicsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get comics_index_url
    assert_response :success
  end

  test "should get show" do
    get comics_show_url
    assert_response :success
  end

  test "should get serie" do
    get comics_serie_url
    assert_response :success
  end

  test "should get event" do
    get comics_event_url
    assert_response :success
  end

end
