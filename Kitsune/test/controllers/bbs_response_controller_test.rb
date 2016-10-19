require 'test_helper'

class BbsResponseControllerTest < ActionDispatch::IntegrationTest
  test "should get fav" do
    get bbs_response_fav_url
    assert_response :success
  end

  test "should get stat" do
    get bbs_response_stat_url
    assert_response :success
  end

end
