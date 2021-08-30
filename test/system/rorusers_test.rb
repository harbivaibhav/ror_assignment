require "application_system_test_case"

class RorusersTest < ApplicationSystemTestCase
  setup do
    @roruser = rorusers(:one)
  end

  test "visiting the index" do
    visit rorusers_url
    assert_selector "h1", text: "Rorusers"
  end

  test "creating a Roruser" do
    visit rorusers_url
    click_on "New Roruser"

    click_on "Create Roruser"

    assert_text "Roruser was successfully created"
    click_on "Back"
  end

  test "updating a Roruser" do
    visit rorusers_url
    click_on "Edit", match: :first

    click_on "Update Roruser"

    assert_text "Roruser was successfully updated"
    click_on "Back"
  end

  test "destroying a Roruser" do
    visit rorusers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Roruser was successfully destroyed"
  end
end
