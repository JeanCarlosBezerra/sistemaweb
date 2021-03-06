require "application_system_test_case"

class NotaTest < ApplicationSystemTestCase
  setup do
    @notum = nota(:one)
  end

  test "visiting the index" do
    visit nota_url
    assert_selector "h1", text: "Nota"
  end

  test "creating a Notum" do
    visit nota_url
    click_on "New Notum"

    fill_in "Notaaluno", with: @notum.notaaluno
    fill_in "Notalivro", with: @notum.notalivro
    fill_in "Notatrabalhos", with: @notum.notatrabalhos
    click_on "Create Notum"

    assert_text "Notum was successfully created"
    click_on "Back"
  end

  test "updating a Notum" do
    visit nota_url
    click_on "Edit", match: :first

    fill_in "Notaaluno", with: @notum.notaaluno
    fill_in "Notalivro", with: @notum.notalivro
    fill_in "Notatrabalhos", with: @notum.notatrabalhos
    click_on "Update Notum"

    assert_text "Notum was successfully updated"
    click_on "Back"
  end

  test "destroying a Notum" do
    visit nota_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Notum was successfully destroyed"
  end
end
