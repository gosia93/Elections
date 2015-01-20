require 'test_helper'

class ConstituenciesControllerTest < ActionController::TestCase
  setup do
    @constituency = constituencies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:constituencies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create constituency" do
    assert_difference('Constituency.count') do
      post :create, constituency: { electors: @constituency.electors, name: @constituency.name, number: @constituency.number, seats: @constituency.seats, town: @constituency.town }
    end

    assert_redirected_to constituency_path(assigns(:constituency))
  end

  test "should show constituency" do
    get :show, id: @constituency
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @constituency
    assert_response :success
  end

  test "should update constituency" do
    patch :update, id: @constituency, constituency: { electors: @constituency.electors, name: @constituency.name, number: @constituency.number, seats: @constituency.seats, town: @constituency.town }
    assert_redirected_to constituency_path(assigns(:constituency))
  end

  test "should destroy constituency" do
    assert_difference('Constituency.count', -1) do
      delete :destroy, id: @constituency
    end

    assert_redirected_to constituencies_path
  end
end
