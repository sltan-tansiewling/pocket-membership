require "application_system_test_case"

class MembershipsUsersTest < ApplicationSystemTestCase
  setup do
    @memberships_user = memberships_users(:one)
  end

  test "visiting the index" do
    visit memberships_users_url
    assert_selector "h1", text: "Memberships Users"
  end

  test "creating a Memberships user" do
    visit memberships_users_url
    click_on "New Memberships User"

    fill_in "Membership", with: @memberships_user.membership_id
    fill_in "User", with: @memberships_user.user_id
    click_on "Create Memberships user"

    assert_text "Memberships user was successfully created"
    click_on "Back"
  end

  test "updating a Memberships user" do
    visit memberships_users_url
    click_on "Edit", match: :first

    fill_in "Membership", with: @memberships_user.membership_id
    fill_in "User", with: @memberships_user.user_id
    click_on "Update Memberships user"

    assert_text "Memberships user was successfully updated"
    click_on "Back"
  end

  test "destroying a Memberships user" do
    visit memberships_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Memberships user was successfully destroyed"
  end
end
