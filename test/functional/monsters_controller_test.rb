require 'test_helper'

class MonstersControllerTest < ActionController::TestCase
  setup do
    @monster = monsters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monsters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monster" do
    assert_difference('Monster.count') do
      post :create, monster: { ability: @monster.ability, attacks_id: @monster.attacks_id, life: @monster.life, name: @monster.name, position: @monster.position }
    end

    assert_redirected_to monster_path(assigns(:monster))
  end

  test "should show monster" do
    get :show, id: @monster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monster
    assert_response :success
  end

  test "should update monster" do
    put :update, id: @monster, monster: { ability: @monster.ability, attacks_id: @monster.attacks_id, life: @monster.life, name: @monster.name, position: @monster.position }
    assert_redirected_to monster_path(assigns(:monster))
  end

  test "should destroy monster" do
    assert_difference('Monster.count', -1) do
      delete :destroy, id: @monster
    end

    assert_redirected_to monsters_path
  end
end
