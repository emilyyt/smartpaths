require 'test_helper'

class UserTagsControllerTest < ActionController::TestCase
  setup do
    @user_tag = user_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_tag" do
    assert_difference('UserTag.count') do
      post :create, user_tag: { tag_id: @user_tag.tag_id, user_id: @user_tag.user_id }
    end

    assert_redirected_to user_tag_path(assigns(:user_tag))
  end

  test "should show user_tag" do
    get :show, id: @user_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_tag
    assert_response :success
  end

  test "should update user_tag" do
    put :update, id: @user_tag, user_tag: { tag_id: @user_tag.tag_id, user_id: @user_tag.user_id }
    assert_redirected_to user_tag_path(assigns(:user_tag))
  end

  test "should destroy user_tag" do
    assert_difference('UserTag.count', -1) do
      delete :destroy, id: @user_tag
    end

    assert_redirected_to user_tags_path
  end
end
