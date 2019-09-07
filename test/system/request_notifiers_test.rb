require "application_system_test_case"

class RequestNotifiersTest < ApplicationSystemTestCase
  setup do
    @request_notifier = request_notifiers(:one)
  end

  test "visiting the index" do
    visit request_notifiers_url
    assert_selector "h1", text: "Request Notifiers"
  end

  test "creating a Request notifier" do
    visit request_notifiers_url
    click_on "New Request Notifier"

    fill_in "Description", with: @request_notifier.description
    fill_in "Photo", with: @request_notifier.photo
    fill_in "Todo name", with: @request_notifier.todo_name
    fill_in "Urgency", with: @request_notifier.urgency
    click_on "Create Request notifier"

    assert_text "Request notifier was successfully created"
    click_on "Back"
  end

  test "updating a Request notifier" do
    visit request_notifiers_url
    click_on "Edit", match: :first

    fill_in "Description", with: @request_notifier.description
    fill_in "Photo", with: @request_notifier.photo
    fill_in "Todo name", with: @request_notifier.todo_name
    fill_in "Urgency", with: @request_notifier.urgency
    click_on "Update Request notifier"

    assert_text "Request notifier was successfully updated"
    click_on "Back"
  end

  test "destroying a Request notifier" do
    visit request_notifiers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Request notifier was successfully destroyed"
  end
end
