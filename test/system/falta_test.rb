require "application_system_test_case"

class FaltaTest < ApplicationSystemTestCase
  setup do
    @faltum = falta(:one)
  end

  test "visiting the index" do
    visit falta_url
    assert_selector "h1", text: "Falta"
  end

  test "creating a Faltum" do
    visit falta_url
    click_on "New Faltum"

    fill_in "Presenças", with: @faltum.presenças
    click_on "Create Faltum"

    assert_text "Faltum was successfully created"
    click_on "Back"
  end

  test "updating a Faltum" do
    visit falta_url
    click_on "Edit", match: :first

    fill_in "Presenças", with: @faltum.presenças
    click_on "Update Faltum"

    assert_text "Faltum was successfully updated"
    click_on "Back"
  end

  test "destroying a Faltum" do
    visit falta_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Faltum was successfully destroyed"
  end
end
