require 'test_helper'

class FloorMonstersControllerTest < ActionController::TestCase
  setup do
    @floor_monster = floor_monsters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:floor_monsters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create floor_monster" do
    assert_difference('FloorMonster.count') do
      post :create, floor_monster: { floor_id: @floor_monster.floor_id, monster_id: @floor_monster.monster_id, position: @floor_monster.position }
    end

    assert_redirected_to floor_monster_path(assigns(:floor_monster))
  end

  test "should show floor_monster" do
    get :show, id: @floor_monster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @floor_monster
    assert_response :success
  end

  test "should update floor_monster" do
    put :update, id: @floor_monster, floor_monster: { floor_id: @floor_monster.floor_id, monster_id: @floor_monster.monster_id, position: @floor_monster.position }
    assert_redirected_to floor_monster_path(assigns(:floor_monster))
  end

  test "should destroy floor_monster" do
    assert_difference('FloorMonster.count', -1) do
      delete :destroy, id: @floor_monster
    end

    assert_redirected_to floor_monsters_path
  end
end
