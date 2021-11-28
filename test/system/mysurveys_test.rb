require "application_system_test_case"

class MysurveysTest < ApplicationSystemTestCase
  setup do
    @mysurvey = mysurveys(:one)
  end

  test "visiting the index" do
    visit mysurveys_url
    assert_selector "h1", text: "Mysurveys"
  end

  test "creating a Mysurvey" do
    visit mysurveys_url
    click_on "New Mysurvey"

    fill_in "Laptop", with: @mysurvey.laptop
    fill_in "Name", with: @mysurvey.name
    fill_in "Type", with: @mysurvey.type
    click_on "Create Mysurvey"

    assert_text "Mysurvey was successfully created"
    click_on "Back"
  end

  test "updating a Mysurvey" do
    visit mysurveys_url
    click_on "Edit", match: :first

    fill_in "Laptop", with: @mysurvey.laptop
    fill_in "Name", with: @mysurvey.name
    fill_in "Type", with: @mysurvey.type
    click_on "Update Mysurvey"

    assert_text "Mysurvey was successfully updated"
    click_on "Back"
  end

  test "destroying a Mysurvey" do
    visit mysurveys_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mysurvey was successfully destroyed"
  end
end
