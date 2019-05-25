require "application_system_test_case"

class GuestlistsTest < ApplicationSystemTestCase
  setup do
    @guestlist = guestlists(:one)
  end

  test "visiting the index" do
    visit guestlists_url
    assert_selector "h1", text: "Guestlists"
  end

  test "creating a Guestlist" do
    visit guestlists_url
    click_on "New Guestlist"

    fill_in "Email", with: @guestlist.email
    fill_in "Event", with: @guestlist.event_id
    fill_in "Name", with: @guestlist.name
    click_on "Create Guestlist"

    assert_text "Guestlist was successfully created"
    click_on "Back"
  end

  test "updating a Guestlist" do
    visit guestlists_url
    click_on "Edit", match: :first

    fill_in "Email", with: @guestlist.email
    fill_in "Event", with: @guestlist.event_id
    fill_in "Name", with: @guestlist.name
    click_on "Update Guestlist"

    assert_text "Guestlist was successfully updated"
    click_on "Back"
  end

  test "destroying a Guestlist" do
    visit guestlists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Guestlist was successfully destroyed"
  end
end
