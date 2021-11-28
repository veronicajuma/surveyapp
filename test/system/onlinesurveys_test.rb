require "application_system_test_case"

class OnlinesurveysTest < ApplicationSystemTestCase
  setup do
    @onlinesurvey = onlinesurveys(:one)
  end

  test "visiting the index" do
    visit onlinesurveys_url
    assert_selector "h1", text: "Onlinesurveys"
  end

  test "creating a Onlinesurvey" do
    visit onlinesurveys_url
    click_on "New Onlinesurvey"

    fill_in "Laptop", with: @onlinesurvey.laptop
    fill_in "Manufacturer", with: @onlinesurvey.manufacturer
    fill_in "Name", with: @onlinesurvey.name
    click_on "Create Onlinesurvey"

    assert_text "Onlinesurvey was successfully created"
    click_on "Back"
  end

  test "updating a Onlinesurvey" do
    visit onlinesurveys_url
    click_on "Edit", match: :first

    fill_in "Laptop", with: @onlinesurvey.laptop
    fill_in "Manufacturer", with: @onlinesurvey.manufacturer
    fill_in "Name", with: @onlinesurvey.name
    click_on "Update Onlinesurvey"

    assert_text "Onlinesurvey was successfully updated"
    click_on "Back"
  end

  test "destroying a Onlinesurvey" do
    visit onlinesurveys_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Onlinesurvey was successfully destroyed"
  end
end
