require "application_system_test_case"

class PayTypesTest < ApplicationSystemTestCase
  setup do
    @pay_type = pay_types(:one)
  end

  test "visiting the index" do
    visit pay_types_url
    assert_selector "h1", text: "Pay Types"
  end

  test "creating a Pay type" do
    visit pay_types_url
    click_on "New Pay Type"

    fill_in "Name", with: @pay_type.name
    click_on "Create Pay type"

    assert_text "Pay type was successfully created"
    click_on "Back"
  end

  test "updating a Pay type" do
    visit pay_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @pay_type.name
    click_on "Update Pay type"

    assert_text "Pay type was successfully updated"
    click_on "Back"
  end

  test "destroying a Pay type" do
    visit pay_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pay type was successfully destroyed"
  end
end
