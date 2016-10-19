require 'test_helper'

class BbsThreadControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get bbs_thread_show_url
    assert_response :success
  end

  test "should get post" do
    get bbs_thread_post_url
    assert_response :success
  end

end
