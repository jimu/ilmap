require "application_system_test_case"

class UnionsTest < ApplicationSystemTestCase
  setup do
    @union = unions(:one)
  end

  test "visiting the index" do
    visit unions_url
    assert_selector "h1", text: "Unions"
  end

  test "creating a Union" do
    visit unions_url
    click_on "New Union"

    fill_in "Cities", with: @union.cities
    fill_in "Members", with: @union.members
    fill_in "Name", with: @union.name
    fill_in "Prosperity", with: @union.prosperity
    fill_in "Region", with: @union.region
    click_on "Create Union"

    assert_text "Union was successfully created"
    click_on "Back"
  end

  test "updating a Union" do
    visit unions_url
    click_on "Edit", match: :first

    fill_in "Cities", with: @union.cities
    fill_in "Members", with: @union.members
    fill_in "Name", with: @union.name
    fill_in "Prosperity", with: @union.prosperity
    fill_in "Region", with: @union.region
    click_on "Update Union"

    assert_text "Union was successfully updated"
    click_on "Back"
  end

  test "destroying a Union" do
    visit unions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Union was successfully destroyed"
  end
end
