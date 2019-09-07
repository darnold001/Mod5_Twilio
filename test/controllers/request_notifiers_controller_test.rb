require 'test_helper'

class RequestNotifiersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request_notifier = request_notifiers(:one)
  end

  test "should get index" do
    get request_notifiers_url
    assert_response :success
  end

  test "should get new" do
    get new_request_notifier_url
    assert_response :success
  end

  test "should create request_notifier" do
    assert_difference('RequestNotifier.count') do
      post request_notifiers_url, params: { request_notifier: { description: @request_notifier.description, photo: @request_notifier.photo, todo_name: @request_notifier.todo_name, urgency: @request_notifier.urgency } }
    end

    assert_redirected_to request_notifier_url(RequestNotifier.last)
  end

  test "should show request_notifier" do
    get request_notifier_url(@request_notifier)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_notifier_url(@request_notifier)
    assert_response :success
  end

  test "should update request_notifier" do
    patch request_notifier_url(@request_notifier), params: { request_notifier: { description: @request_notifier.description, photo: @request_notifier.photo, todo_name: @request_notifier.todo_name, urgency: @request_notifier.urgency } }
    assert_redirected_to request_notifier_url(@request_notifier)
  end

  test "should destroy request_notifier" do
    assert_difference('RequestNotifier.count', -1) do
      delete request_notifier_url(@request_notifier)
    end

    assert_redirected_to request_notifiers_url
  end
end
