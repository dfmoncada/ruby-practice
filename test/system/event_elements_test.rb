require "application_system_test_case"

class EventElementsTest < ApplicationSystemTestCase
  setup do
    @event_element = event_elements(:one)
  end

  test "visiting the index" do
    visit event_elements_url
    assert_selector "h1", text: "Event Elements"
  end

  test "creating a Event element" do
    visit event_elements_url
    click_on "New Event Element"

    fill_in "Created At", with: @event_element.created_at
    fill_in "Due Date", with: @event_element.due_date
    fill_in "Name", with: @event_element.name
    fill_in "Reminder", with: @event_element.reminder
    fill_in "Starting At", with: @event_element.starting_at
    fill_in "Updated At", with: @event_element.updated_at
    click_on "Create Event element"

    assert_text "Event element was successfully created"
    click_on "Back"
  end

  test "updating a Event element" do
    visit event_elements_url
    click_on "Edit", match: :first

    fill_in "Created At", with: @event_element.created_at
    fill_in "Due Date", with: @event_element.due_date
    fill_in "Name", with: @event_element.name
    fill_in "Reminder", with: @event_element.reminder
    fill_in "Starting At", with: @event_element.starting_at
    fill_in "Updated At", with: @event_element.updated_at
    click_on "Update Event element"

    assert_text "Event element was successfully updated"
    click_on "Back"
  end

  test "destroying a Event element" do
    visit event_elements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event element was successfully destroyed"
  end
end
