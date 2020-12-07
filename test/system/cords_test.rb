require "application_system_test_case"

class CordsTest < ApplicationSystemTestCase
  setup do
    @cord = cords(:one)
  end

  test "visiting the index" do
    visit cords_url
    assert_selector "h1", text: "Cords"
  end

  test "creating a Cord" do
    visit cords_url
    click_on "New Cord"

    fill_in "Colour", with: @cord.colour
    fill_in "Name", with: @cord.name
    fill_in "Racquet", with: @cord.racquet_id
    click_on "Create Cord"

    assert_text "Cord was successfully created"
    click_on "Back"
  end

  test "updating a Cord" do
    visit cords_url
    click_on "Edit", match: :first

    fill_in "Colour", with: @cord.colour
    fill_in "Name", with: @cord.name
    fill_in "Racquet", with: @cord.racquet_id
    click_on "Update Cord"

    assert_text "Cord was successfully updated"
    click_on "Back"
  end

  test "destroying a Cord" do
    visit cords_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cord was successfully destroyed"
  end
end
