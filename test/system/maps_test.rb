require "application_system_test_case"

class MapsTest < ApplicationSystemTestCase
  setup do
    @map = maps(:one)
  end

  test "visiting the index" do
    visit maps_url
    assert_selector "h1", text: "Maps"
  end

  test "creating a Map" do
    visit maps_url
    click_on "New Map"

    fill_in "Endx", with: @map.endx
    fill_in "Endy", with: @map.endy
    fill_in "Height", with: @map.height
    fill_in "Max activeness", with: @map.max_activeness
    fill_in "Max prosperity", with: @map.max_prosperity
    fill_in "Min activeness", with: @map.min_activeness
    fill_in "Min prosperity", with: @map.min_prosperity
    fill_in "Name", with: @map.name
    fill_in "Startx", with: @map.startx
    fill_in "Starty", with: @map.starty
    fill_in "Width", with: @map.width
    click_on "Create Map"

    assert_text "Map was successfully created"
    click_on "Back"
  end

  test "updating a Map" do
    visit maps_url
    click_on "Edit", match: :first

    fill_in "Endx", with: @map.endx
    fill_in "Endy", with: @map.endy
    fill_in "Height", with: @map.height
    fill_in "Max activeness", with: @map.max_activeness
    fill_in "Max prosperity", with: @map.max_prosperity
    fill_in "Min activeness", with: @map.min_activeness
    fill_in "Min prosperity", with: @map.min_prosperity
    fill_in "Name", with: @map.name
    fill_in "Startx", with: @map.startx
    fill_in "Starty", with: @map.starty
    fill_in "Width", with: @map.width
    click_on "Update Map"

    assert_text "Map was successfully updated"
    click_on "Back"
  end

  test "destroying a Map" do
    visit maps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Map was successfully destroyed"
  end
end
