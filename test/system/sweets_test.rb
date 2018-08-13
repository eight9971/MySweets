require "application_system_test_case"

class SweetsTest < ApplicationSystemTestCase
  setup do
    @sweet = sweets(:one)
  end

  test "visiting the index" do
    visit sweets_url
    assert_selector "h1", text: "Sweets"
  end

  test "creating a Sweet" do
    visit sweets_url
    click_on "New Sweet"

    fill_in "Detail", with: @sweet.detail
    fill_in "Shop", with: @sweet.shop
    fill_in "Sweet", with: @sweet.sweet
    click_on "Create Sweet"

    assert_text "Sweet was successfully created"
    click_on "Back"
  end

  test "updating a Sweet" do
    visit sweets_url
    click_on "Edit", match: :first

    fill_in "Detail", with: @sweet.detail
    fill_in "Shop", with: @sweet.shop
    fill_in "Sweet", with: @sweet.sweet
    click_on "Update Sweet"

    assert_text "Sweet was successfully updated"
    click_on "Back"
  end

  test "destroying a Sweet" do
    visit sweets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sweet was successfully destroyed"
  end
end
