require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get message_new_url
    assert_response :success
  end

  test "should get show" do
    get message_show_url
    assert_response :success
  end

end
