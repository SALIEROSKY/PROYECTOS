require "application_system_test_case"

class RecyclingCentersTest < ApplicationSystemTestCase
  setup do
    @recycling_center = recycling_centers(:one)
  end

  test "visiting the index" do
    visit recycling_centers_url
    assert_selector "h1", text: "Recycling Centers"
  end

  test "creating a Recycling center" do
    visit recycling_centers_url
    click_on "New Recycling Center"

    fill_in "Address Recycling Center", with: @recycling_center.address_recycling_center
    fill_in "Desc Recycling Center", with: @recycling_center.desc_recycling_center
    fill_in "Nam Recycling Center", with: @recycling_center.nam_recycling_center
    fill_in "Tel Recycling Center", with: @recycling_center.tel_recycling_center
    fill_in "Web Recycling Center", with: @recycling_center.web_recycling_center
    click_on "Create Recycling center"

    assert_text "Recycling center was successfully created"
    click_on "Back"
  end

  test "updating a Recycling center" do
    visit recycling_centers_url
    click_on "Edit", match: :first

    fill_in "Address Recycling Center", with: @recycling_center.address_recycling_center
    fill_in "Desc Recycling Center", with: @recycling_center.desc_recycling_center
    fill_in "Nam Recycling Center", with: @recycling_center.nam_recycling_center
    fill_in "Tel Recycling Center", with: @recycling_center.tel_recycling_center
    fill_in "Web Recycling Center", with: @recycling_center.web_recycling_center
    click_on "Update Recycling center"

    assert_text "Recycling center was successfully updated"
    click_on "Back"
  end

  test "destroying a Recycling center" do
    visit recycling_centers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recycling center was successfully destroyed"
  end
end
