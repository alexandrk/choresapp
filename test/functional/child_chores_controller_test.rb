require 'test_helper'

class ChildChoresControllerTest < ActionController::TestCase
  setup do
    @child_chore = child_chores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:child_chores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create child_chore" do
    assert_difference('ChildChore.count') do
      post :create, child_chore: { description: @child_chore.description, reward_points: @child_chore.reward_points }
    end

    assert_redirected_to child_chore_path(assigns(:child_chore))
  end

  test "should show child_chore" do
    get :show, id: @child_chore
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @child_chore
    assert_response :success
  end

  test "should update child_chore" do
    put :update, id: @child_chore, child_chore: { description: @child_chore.description, reward_points: @child_chore.reward_points }
    assert_redirected_to child_chore_path(assigns(:child_chore))
  end

  test "should destroy child_chore" do
    assert_difference('ChildChore.count', -1) do
      delete :destroy, id: @child_chore
    end

    assert_redirected_to child_chores_path
  end
end
