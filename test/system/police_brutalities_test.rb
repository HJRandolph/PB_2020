require "application_system_test_case"

class PoliceBrutalitiesTest < ApplicationSystemTestCase
  setup do
    @police_brutality = police_brutalities(:one)
  end

  test "visiting the index" do
    visit police_brutalities_url
    assert_selector "h1", text: "Police Brutalities"
  end

  test "creating a Police brutality" do
    visit police_brutalities_url
    click_on "New Police Brutality"

    click_on "Create Police brutality"

    assert_text "Police brutality was successfully created"
    click_on "Back"
  end

  test "updating a Police brutality" do
    visit police_brutalities_url
    click_on "Edit", match: :first

    click_on "Update Police brutality"

    assert_text "Police brutality was successfully updated"
    click_on "Back"
  end

  test "destroying a Police brutality" do
    visit police_brutalities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Police brutality was successfully destroyed"
  end
end
