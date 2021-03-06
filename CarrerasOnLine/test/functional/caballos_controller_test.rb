require 'test_helper'

class CaballosControllerTest < ActionController::TestCase
  setup do
    @caballo = caballos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caballos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caballo" do
    assert_difference('Caballo.count') do
      post :create, caballo: { nombre: @caballo.nombre, ratio: @caballo.ratio }
    end

    assert_redirected_to caballo_path(assigns(:caballo))
  end

  test "should show caballo" do
    get :show, id: @caballo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caballo
    assert_response :success
  end

  test "should update caballo" do
    put :update, id: @caballo, caballo: { nombre: @caballo.nombre, ratio: @caballo.ratio }
    assert_redirected_to caballo_path(assigns(:caballo))
  end

  test "should destroy caballo" do
    assert_difference('Caballo.count', -1) do
      delete :destroy, id: @caballo
    end

    assert_redirected_to caballos_path
  end
end
