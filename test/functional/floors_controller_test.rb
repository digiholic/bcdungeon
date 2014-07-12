require 'test_helper'

class FloorsControllerTest < ActionController::TestCase
  setup do
    @floor = floors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:floors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create floor" do
    assert_difference('Floor.count') do
      post :create, floor: { childs_id: @floor.childs_id, decision: @floor.decision, monsters_id: @floor.monsters_id, name: @floor.name, objective: @floor.objective, parents_id: @floor.parents_id, size: @floor.size, start_position: @floor.start_position }
    end

    assert_redirected_to floor_path(assigns(:floor))
  end

  test "should show floor" do
    get :show, id: @floor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @floor
    assert_response :success
  end

  test "should update floor" do
    put :update, id: @floor, floor: { childs_id: @floor.childs_id, decision: @floor.decision, monsters_id: @floor.monsters_id, name: @floor.name, objective: @floor.objective, parents_id: @floor.parents_id, size: @floor.size, start_position: @floor.start_position }
    assert_redirected_to floor_path(assigns(:floor))
  end

  test "should destroy floor" do
    assert_difference('Floor.count', -1) do
      delete :destroy, id: @floor
    end

    assert_redirected_to floors_path
  end
end
