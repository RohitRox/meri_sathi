require 'test_helper'

class SafeHousesControllerTest < ActionController::TestCase
  setup do
    @safe_house = safe_houses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:safe_houses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create safe_house" do
    assert_difference('SafeHouse.count') do
      post :create, safe_house: { address: @safe_house.address, contact_name: @safe_house.contact_name, contact_no: @safe_house.contact_no, coordinates: @safe_house.coordinates, name: @safe_house.name }
    end

    assert_redirected_to safe_house_path(assigns(:safe_house))
  end

  test "should show safe_house" do
    get :show, id: @safe_house
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @safe_house
    assert_response :success
  end

  test "should update safe_house" do
    put :update, id: @safe_house, safe_house: { address: @safe_house.address, contact_name: @safe_house.contact_name, contact_no: @safe_house.contact_no, coordinates: @safe_house.coordinates, name: @safe_house.name }
    assert_redirected_to safe_house_path(assigns(:safe_house))
  end

  test "should destroy safe_house" do
    assert_difference('SafeHouse.count', -1) do
      delete :destroy, id: @safe_house
    end

    assert_redirected_to safe_houses_path
  end
end
