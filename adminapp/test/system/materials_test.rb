require "application_system_test_case"

class MaterialsTest < ApplicationSystemTestCase
  setup do
    @material = materials(:one)
  end

  test "visiting the index" do
    visit materials_url
    assert_selector "h1", text: "Materials"
  end

  test "creating a Material" do
    visit materials_url
    click_on "New Material"

    fill_in "Desc Material", with: @material.desc_material
    fill_in "Id Material Type", with: @material.id_material_type
    fill_in "Material Type", with: @material.material_type_id
    fill_in "Nam Material", with: @material.nam_material
    click_on "Create Material"

    assert_text "Material was successfully created"
    click_on "Back"
  end

  test "updating a Material" do
    visit materials_url
    click_on "Edit", match: :first

    fill_in "Desc Material", with: @material.desc_material
    fill_in "Id Material Type", with: @material.id_material_type
    fill_in "Material Type", with: @material.material_type_id
    fill_in "Nam Material", with: @material.nam_material
    click_on "Update Material"

    assert_text "Material was successfully updated"
    click_on "Back"
  end

  test "destroying a Material" do
    visit materials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Material was successfully destroyed"
  end
end
