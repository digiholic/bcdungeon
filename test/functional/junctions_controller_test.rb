require 'test_helper'

class JunctionsControllerTest < ActionController::TestCase
  setup do
    @junction = junctions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:junctions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create junction" do
    assert_difference('Junction.count') do
      post :create, junction: { destination_id: @junction.destination_id, floor_id: @junction.floor_id }
    end

    assert_redirected_to junction_path(assigns(:junction))
  end

  test "should show junction" do
    get :show, id: @junction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @junction
    assert_response :success
  end

  test "should update junction" do
    put :update, id: @junction, junction: { destination_id: @junction.destination_id, floor_id: @junction.floor_id }
    assert_redirected_to junction_path(assigns(:junction))
  end

  test "should destroy junction" do
    assert_difference('Junction.count', -1) do
      delete :destroy, id: @junction
    end

    assert_redirected_to junctions_path
  end
end
