require 'test_helper'

class RutesControllerTest < ActionController::TestCase
  setup do
    @rute = rutes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rutes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rute" do
    assert_difference('Rute.count') do
      post :create, :rute => @rute.attributes
    end

    assert_redirected_to rute_path(assigns(:rute))
  end

  test "should show rute" do
    get :show, :id => @rute.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @rute.to_param
    assert_response :success
  end

  test "should update rute" do
    put :update, :id => @rute.to_param, :rute => @rute.attributes
    assert_redirected_to rute_path(assigns(:rute))
  end

  test "should destroy rute" do
    assert_difference('Rute.count', -1) do
      delete :destroy, :id => @rute.to_param
    end

    assert_redirected_to rutes_path
  end
end
