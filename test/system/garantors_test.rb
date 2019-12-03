require "application_system_test_case"

class GarantorsTest < ApplicationSystemTestCase
  setup do
    @garantor = garantors(:one)
  end

  test "visiting the index" do
    visit garantors_url
    assert_selector "h1", text: "Garantors"
  end

  test "creating a Garantor" do
    visit garantors_url
    click_on "New Garantor"

    fill_in "Address", with: @garantor.address
    fill_in "Name", with: @garantor.name
    fill_in "Telephone", with: @garantor.telephone
    fill_in "Value tranfer", with: @garantor.value_tranfer
    click_on "Create Garantor"

    assert_text "Garantor was successfully created"
    click_on "Back"
  end

  test "updating a Garantor" do
    visit garantors_url
    click_on "Edit", match: :first

    fill_in "Address", with: @garantor.address
    fill_in "Name", with: @garantor.name
    fill_in "Telephone", with: @garantor.telephone
    fill_in "Value tranfer", with: @garantor.value_tranfer
    click_on "Update Garantor"

    assert_text "Garantor was successfully updated"
    click_on "Back"
  end

  test "destroying a Garantor" do
    visit garantors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Garantor was successfully destroyed"
  end
end
