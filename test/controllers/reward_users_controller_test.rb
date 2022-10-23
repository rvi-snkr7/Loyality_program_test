require "test_helper"

class RewardUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reward_user = reward_users(:one)
  end

  test "should get index" do
    get reward_users_url
    assert_response :success
  end

  test "should get new" do
    get new_reward_user_url
    assert_response :success
  end

  test "should create reward_user" do
    assert_difference('RewardUser.count') do
      post reward_users_url, params: { reward_user: { name: @reward_user.name } }
    end

    assert_redirected_to reward_user_url(RewardUser.last)
  end

  test "should show reward_user" do
    get reward_user_url(@reward_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_reward_user_url(@reward_user)
    assert_response :success
  end

  test "should update reward_user" do
    patch reward_user_url(@reward_user), params: { reward_user: { name: @reward_user.name } }
    assert_redirected_to reward_user_url(@reward_user)
  end

  test "should destroy reward_user" do
    assert_difference('RewardUser.count', -1) do
      delete reward_user_url(@reward_user)
    end

    assert_redirected_to reward_users_url
  end
end
