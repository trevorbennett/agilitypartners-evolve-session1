require "application_system_test_case"

class TextLogsTest < ApplicationSystemTestCase
  setup do
    @text_log = text_logs(:one)
  end

  test "visiting the index" do
    visit text_logs_url
    assert_selector "h1", text: "Text Logs"
  end

  test "creating a Text log" do
    visit text_logs_url
    click_on "New Text Log"

    fill_in "From", with: @text_log.from_id
    fill_in "Message", with: @text_log.message
    fill_in "Sent", with: @text_log.sent
    fill_in "To", with: @text_log.to_id
    click_on "Create Text log"

    assert_text "Text log was successfully created"
    click_on "Back"
  end

  test "updating a Text log" do
    visit text_logs_url
    click_on "Edit", match: :first

    fill_in "From", with: @text_log.from_id
    fill_in "Message", with: @text_log.message
    fill_in "Sent", with: @text_log.sent
    fill_in "To", with: @text_log.to_id
    click_on "Update Text log"

    assert_text "Text log was successfully updated"
    click_on "Back"
  end

  test "destroying a Text log" do
    visit text_logs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Text log was successfully destroyed"
  end
end
