require 'test_helper'

class TextLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @text_log = text_logs(:one)
  end

  test "should get index" do
    get text_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_text_log_url
    assert_response :success
  end

  test "should create text_log" do
    assert_difference('TextLog.count') do
      post text_logs_url, params: { text_log: { from_id: @text_log.from_id, message: @text_log.message, sent: @text_log.sent, to_id: @text_log.to_id } }
    end

    assert_redirected_to text_log_url(TextLog.last)
  end

  test "should show text_log" do
    get text_log_url(@text_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_text_log_url(@text_log)
    assert_response :success
  end

  test "should update text_log" do
    patch text_log_url(@text_log), params: { text_log: { from_id: @text_log.from_id, message: @text_log.message, sent: @text_log.sent, to_id: @text_log.to_id } }
    assert_redirected_to text_log_url(@text_log)
  end

  test "should destroy text_log" do
    assert_difference('TextLog.count', -1) do
      delete text_log_url(@text_log)
    end

    assert_redirected_to text_logs_url
  end
end
