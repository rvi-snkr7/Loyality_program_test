require "application_system_test_case"

class RewardUsersTest < ApplicationSystemTestCase
  setup do
    @reward_user = reward_users(:one)
  end

  test "visiting the index" do
    visit reward_users_url
    assert_selector "h1", text: "Reward Users"
  end

  test "creating a Reward user" do
    visit reward_users_url
    click_on "New Reward User"

    fill_in "Name", with: @reward_user.name
    click_on "Create Reward user"

    assert_text "Reward user was successfully created"
    click_on "Back"
  end

  test "updating a Reward user" do
    visit reward_users_url
    click_on "Edit", match: :first

    fill_in "Name", with: @reward_user.name
    click_on "Update Reward user"

    assert_text "Reward user was successfully updated"
    click_on "Back"
  end

  test "destroying a Reward user" do
    visit reward_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reward user was successfully destroyed"
  end
end
