require 'test_helper'

class Goals::GoalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goals_goal = goals_goals(:one)
  end

  test "should get index" do
    get goals_goals_url
    assert_response :success
  end

  test "should get new" do
    get new_goals_goal_url
    assert_response :success
  end

  test "should create goals_goal" do
    assert_difference('Goals::Goal.count') do
      post goals_goals_url, params: { goals_goal: {  } }
    end

    assert_redirected_to goals_goal_url(Goals::Goal.last)
  end

  test "should show goals_goal" do
    get goals_goal_url(@goals_goal)
    assert_response :success
  end

  test "should get edit" do
    get edit_goals_goal_url(@goals_goal)
    assert_response :success
  end

  test "should update goals_goal" do
    patch goals_goal_url(@goals_goal), params: { goals_goal: {  } }
    assert_redirected_to goals_goal_url(@goals_goal)
  end

  test "should destroy goals_goal" do
    assert_difference('Goals::Goal.count', -1) do
      delete goals_goal_url(@goals_goal)
    end

    assert_redirected_to goals_goals_url
  end
end
