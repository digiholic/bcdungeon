require 'test_helper'

class AttacksControllerTest < ActionController::TestCase
  setup do
    @attack = attacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attack" do
    assert_difference('Attack.count') do
      post :create, attack: { ability: @attack.ability, name: @attack.name, power: @attack.power, priority: @attack.priority, range_end: @attack.range_end, range_start: @attack.range_start, roll_end: @attack.roll_end, roll_start: @attack.roll_start }
    end

    assert_redirected_to attack_path(assigns(:attack))
  end

  test "should show attack" do
    get :show, id: @attack
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attack
    assert_response :success
  end

  test "should update attack" do
    put :update, id: @attack, attack: { ability: @attack.ability, name: @attack.name, power: @attack.power, priority: @attack.priority, range_end: @attack.range_end, range_start: @attack.range_start, roll_end: @attack.roll_end, roll_start: @attack.roll_start }
    assert_redirected_to attack_path(assigns(:attack))
  end

  test "should destroy attack" do
    assert_difference('Attack.count', -1) do
      delete :destroy, id: @attack
    end

    assert_redirected_to attacks_path
  end
end
