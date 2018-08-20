require "application_system_test_case"

class TransportMaterialsTest < ApplicationSystemTestCase
  setup do
    @transport_material = transport_materials(:one)
  end

  test "visiting the index" do
    visit transport_materials_url
    assert_selector "h1", text: "Transport Materials"
  end

  test "creating a Transport material" do
    visit transport_materials_url
    click_on "New Transport Material"

    fill_in "Date Transport Material", with: @transport_material.date_transport_material
    fill_in "Desc Transport Material", with: @transport_material.desc_transport_material
    fill_in "Id Material", with: @transport_material.id_material
    fill_in "Id Recycling Center", with: @transport_material.id_recycling_center
    fill_in "Nam Transport Material", with: @transport_material.nam_transport_material
    click_on "Create Transport material"

    assert_text "Transport material was successfully created"
    click_on "Back"
  end

  test "updating a Transport material" do
    visit transport_materials_url
    click_on "Edit", match: :first

    fill_in "Date Transport Material", with: @transport_material.date_transport_material
    fill_in "Desc Transport Material", with: @transport_material.desc_transport_material
    fill_in "Id Material", with: @transport_material.id_material
    fill_in "Id Recycling Center", with: @transport_material.id_recycling_center
    fill_in "Nam Transport Material", with: @transport_material.nam_transport_material
    click_on "Update Transport material"

    assert_text "Transport material was successfully updated"
    click_on "Back"
  end

  test "destroying a Transport material" do
    visit transport_materials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transport material was successfully destroyed"
  end
end
