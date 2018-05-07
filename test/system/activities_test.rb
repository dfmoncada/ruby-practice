require "application_system_test_case"

class ActivitiesTest < ApplicationSystemTestCase
  setup do
    @activity = activities(:one)
  end

  test "visiting the index" do
    visit activities_url
    assert_selector "h1", text: "Activities"
  end

  test "creating a Activity" do
    visit activities_url
    click_on "New Activity"

    fill_in "Created At", with: @activity.created_at
    fill_in "Description", with: @activity.description
    fill_in "Event Element", with: @activity.event_element_id
    fill_in "Finished At", with: @activity.finished_at
    fill_in "Measured Value", with: @activity.measured_value
    fill_in "Name", with: @activity.name
    fill_in "Starting At", with: @activity.starting_at
    fill_in "Type", with: @activity.type
    fill_in "Unit", with: @activity.unit
    fill_in "Updated At", with: @activity.updated_at
    click_on "Create Activity"

    assert_text "Activity was successfully created"
    click_on "Back"
  end

  test "updating a Activity" do
    visit activities_url
    click_on "Edit", match: :first

    fill_in "Created At", with: @activity.created_at
    fill_in "Description", with: @activity.description
    fill_in "Event Element", with: @activity.event_element_id
    fill_in "Finished At", with: @activity.finished_at
    fill_in "Measured Value", with: @activity.measured_value
    fill_in "Name", with: @activity.name
    fill_in "Starting At", with: @activity.starting_at
    fill_in "Type", with: @activity.type
    fill_in "Unit", with: @activity.unit
    fill_in "Updated At", with: @activity.updated_at
    click_on "Update Activity"

    assert_text "Activity was successfully updated"
    click_on "Back"
  end

  test "destroying a Activity" do
    visit activities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Activity was successfully destroyed"
  end
end
