require 'test_helper'

class UserProgramsControllerTest < ActionController::TestCase
  setup do
    @user_program = user_programs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_programs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_program" do
    assert_difference('UserProgram.count') do
      post :create, user_program: { graduating_year: @user_program.graduating_year, program_id: @user_program.program_id, user_id: @user_program.user_id }
    end

    assert_redirected_to user_program_path(assigns(:user_program))
  end

  test "should show user_program" do
    get :show, id: @user_program
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_program
    assert_response :success
  end

  test "should update user_program" do
    put :update, id: @user_program, user_program: { graduating_year: @user_program.graduating_year, program_id: @user_program.program_id, user_id: @user_program.user_id }
    assert_redirected_to user_program_path(assigns(:user_program))
  end

  test "should destroy user_program" do
    assert_difference('UserProgram.count', -1) do
      delete :destroy, id: @user_program
    end

    assert_redirected_to user_programs_path
  end
end
