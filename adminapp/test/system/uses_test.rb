require "application_system_test_case"

class UsesTest < ApplicationSystemTestCase
  setup do
    @use = uses(:one)
  end

  test "visiting the index" do
    visit uses_url
    assert_selector "h1", text: "Uses"
  end

  test "creating a Use" do
    visit uses_url
    click_on "New Use"

    fill_in "Desc ", with: @use.desc_
    fill_in "Id Material", with: @use.id_material
    fill_in "Id User", with: @use.id_user
    fill_in "Nam Use", with: @use.nam_use
    fill_in "Use", with: @use.use
    click_on "Create Use"

    assert_text "Use was successfully created"
    click_on "Back"
  end

  test "updating a Use" do
    visit uses_url
    click_on "Edit", match: :first

    fill_in "Desc ", with: @use.desc_
    fill_in "Id Material", with: @use.id_material
    fill_in "Id User", with: @use.id_user
    fill_in "Nam Use", with: @use.nam_use
    fill_in "Use", with: @use.use
    click_on "Update Use"

    assert_text "Use was successfully updated"
    click_on "Back"
  end

  test "destroying a Use" do
    visit uses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Use was successfully destroyed"
  end
end
