require 'test_helper'

class EventElementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_element = event_elements(:one)
  end

  test "should get index" do
    get event_elements_url
    assert_response :success
  end

  test "should get new" do
    get new_event_element_url
    assert_response :success
  end

  test "should create event_element" do
    assert_difference('EventElement.count') do
      post event_elements_url, params: { event_element: { created_at: @event_element.created_at, due_date: @event_element.due_date, name: @event_element.name, reminder: @event_element.reminder, starting_at: @event_element.starting_at, updated_at: @event_element.updated_at } }
    end

    assert_redirected_to event_element_url(EventElement.last)
  end

  test "should show event_element" do
    get event_element_url(@event_element)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_element_url(@event_element)
    assert_response :success
  end

  test "should update event_element" do
    patch event_element_url(@event_element), params: { event_element: { created_at: @event_element.created_at, due_date: @event_element.due_date, name: @event_element.name, reminder: @event_element.reminder, starting_at: @event_element.starting_at, updated_at: @event_element.updated_at } }
    assert_redirected_to event_element_url(@event_element)
  end

  test "should destroy event_element" do
    assert_difference('EventElement.count', -1) do
      delete event_element_url(@event_element)
    end

    assert_redirected_to event_elements_url
  end
end
