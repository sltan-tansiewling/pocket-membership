require 'test_helper'

class MembershipsUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @memberships_user = memberships_users(:one)
  end

  test "should get index" do
    get memberships_users_url
    assert_response :success
  end

  test "should get new" do
    get new_memberships_user_url
    assert_response :success
  end

  test "should create memberships_user" do
    assert_difference('MembershipsUser.count') do
      post memberships_users_url, params: { memberships_user: { membership_id: @memberships_user.membership_id, user_id: @memberships_user.user_id } }
    end

    assert_redirected_to memberships_user_url(MembershipsUser.last)
  end

  test "should show memberships_user" do
    get memberships_user_url(@memberships_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_memberships_user_url(@memberships_user)
    assert_response :success
  end

  test "should update memberships_user" do
    patch memberships_user_url(@memberships_user), params: { memberships_user: { membership_id: @memberships_user.membership_id, user_id: @memberships_user.user_id } }
    assert_redirected_to memberships_user_url(@memberships_user)
  end

  test "should destroy memberships_user" do
    assert_difference('MembershipsUser.count', -1) do
      delete memberships_user_url(@memberships_user)
    end

    assert_redirected_to memberships_users_url
  end
end
