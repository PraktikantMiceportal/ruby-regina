require "application_system_test_case"

class DesingersTest < ApplicationSystemTestCase
  setup do
    @desinger = desingers(:one)
  end

  test "visiting the index" do
    visit desingers_url
    assert_selector "h1", text: "Desingers"
  end

  test "should create desinger" do
    visit desingers_url
    click_on "New desinger"

    fill_in "Email", with: @desinger.email
    fill_in "Name", with: @desinger.name
    fill_in "Passwort", with: @desinger.passwort
    click_on "Create Desinger"

    assert_text "Desinger was successfully created"
    click_on "Back"
  end

  test "should update Desinger" do
    visit desinger_url(@desinger)
    click_on "Edit this desinger", match: :first

    fill_in "Email", with: @desinger.email
    fill_in "Name", with: @desinger.name
    fill_in "Passwort", with: @desinger.passwort
    click_on "Update Desinger"

    assert_text "Desinger was successfully updated"
    click_on "Back"
  end

  test "should destroy Desinger" do
    visit desinger_url(@desinger)
    click_on "Destroy this desinger", match: :first

    assert_text "Desinger was successfully destroyed"
  end
end
