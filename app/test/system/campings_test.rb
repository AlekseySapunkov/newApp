require "application_system_test_case"

class CampingsTest < ApplicationSystemTestCase
  setup do
    @camping = campings(:one)
  end

  test "visiting the index" do
    visit campings_url
    assert_selector "h1", text: "Campings"
  end

  test "should create camping" do
    visit campings_url
    click_on "New camping"

    fill_in "City", with: @camping.city
    fill_in "Definition", with: @camping.definition
    fill_in "Name", with: @camping.name
    fill_in "Region", with: @camping.region
    click_on "Create Camping"

    assert_text "Camping was successfully created"
    click_on "Back"
  end

  test "should update Camping" do
    visit camping_url(@camping)
    click_on "Edit this camping", match: :first

    fill_in "City", with: @camping.city
    fill_in "Definition", with: @camping.definition
    fill_in "Name", with: @camping.name
    fill_in "Region", with: @camping.region
    click_on "Update Camping"

    assert_text "Camping was successfully updated"
    click_on "Back"
  end

  test "should destroy Camping" do
    visit camping_url(@camping)
    click_on "Destroy this camping", match: :first

    assert_text "Camping was successfully destroyed"
  end
end
