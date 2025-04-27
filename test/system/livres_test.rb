require "application_system_test_case"

class LivresTest < ApplicationSystemTestCase
  setup do
    @livre = livres(:one)
  end

  test "visiting the index" do
    visit livres_url
    assert_selector "h1", text: "Livres"
  end

  test "should create livre" do
    visit livres_url
    click_on "New livre"

    fill_in "Auteur", with: @livre.auteur
    fill_in "Date", with: @livre.date
    fill_in "Resume", with: @livre.resume
    fill_in "Titre", with: @livre.titre
    click_on "Create Livre"

    assert_text "Livre was successfully created"
    click_on "Back"
  end

  test "should update Livre" do
    visit livre_url(@livre)
    click_on "Edit this livre", match: :first

    fill_in "Auteur", with: @livre.auteur
    fill_in "Date", with: @livre.date
    fill_in "Resume", with: @livre.resume
    fill_in "Titre", with: @livre.titre
    click_on "Update Livre"

    assert_text "Livre was successfully updated"
    click_on "Back"
  end

  test "should destroy Livre" do
    visit livre_url(@livre)
    click_on "Destroy this livre", match: :first

    assert_text "Livre was successfully destroyed"
  end
end
