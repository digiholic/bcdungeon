require 'test_helper'

class PlayerInstancesControllerTest < ActionController::TestCase
  setup do
    @player_instance = player_instances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_instances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_instance" do
    assert_difference('PlayerInstance.count') do
      post :create, player_instance: { health: @player_instance.health, location: @player_instance.location, name: @player_instance.name, session_id: @player_instance.session_id }
    end

    assert_redirected_to player_instance_path(assigns(:player_instance))
  end

  test "should show player_instance" do
    get :show, id: @player_instance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_instance
    assert_response :success
  end

  test "should update player_instance" do
    put :update, id: @player_instance, player_instance: { health: @player_instance.health, location: @player_instance.location, name: @player_instance.name, session_id: @player_instance.session_id }
    assert_redirected_to player_instance_path(assigns(:player_instance))
  end

  test "should destroy player_instance" do
    assert_difference('PlayerInstance.count', -1) do
      delete :destroy, id: @player_instance
    end

    assert_redirected_to player_instances_path
  end
end
