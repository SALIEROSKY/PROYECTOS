require "application_system_test_case"

class EnvironmentsTest < ApplicationSystemTestCase
  setup do
    @environment = environments(:one)
  end

  test "visiting the index" do
    visit environments_url
    assert_selector "h1", text: "Environments"
  end

  test "creating a Environment" do
    visit environments_url
    click_on "New Environment"

    fill_in "Desc ", with: @environment.desc_
    fill_in "Environment", with: @environment.environment
    fill_in "Id Multimedia", with: @environment.id_multimedia
    fill_in "Id User", with: @environment.id_user
    fill_in "Nam ", with: @environment.nam_
    click_on "Create Environment"

    assert_text "Environment was successfully created"
    click_on "Back"
  end

  test "updating a Environment" do
    visit environments_url
    click_on "Edit", match: :first

    fill_in "Desc ", with: @environment.desc_
    fill_in "Environment", with: @environment.environment
    fill_in "Id Multimedia", with: @environment.id_multimedia
    fill_in "Id User", with: @environment.id_user
    fill_in "Nam ", with: @environment.nam_
    click_on "Update Environment"

    assert_text "Environment was successfully updated"
    click_on "Back"
  end

  test "destroying a Environment" do
    visit environments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Environment was successfully destroyed"
  end
end
