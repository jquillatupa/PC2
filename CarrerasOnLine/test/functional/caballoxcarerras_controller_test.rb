require 'test_helper'

class CaballoxcarerrasControllerTest < ActionController::TestCase
  setup do
    @caballoxcarerra = caballoxcarerras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caballoxcarerras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caballoxcarerra" do
    assert_difference('Caballoxcarerra.count') do
      post :create, caballoxcarerra: { idcaballo: @caballoxcarerra.idcaballo, idcarrera: @caballoxcarerra.idcarrera, puesto: @caballoxcarerra.puesto }
    end

    assert_redirected_to caballoxcarerra_path(assigns(:caballoxcarerra))
  end

  test "should show caballoxcarerra" do
    get :show, id: @caballoxcarerra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caballoxcarerra
    assert_response :success
  end

  test "should update caballoxcarerra" do
    put :update, id: @caballoxcarerra, caballoxcarerra: { idcaballo: @caballoxcarerra.idcaballo, idcarrera: @caballoxcarerra.idcarrera, puesto: @caballoxcarerra.puesto }
    assert_redirected_to caballoxcarerra_path(assigns(:caballoxcarerra))
  end

  test "should destroy caballoxcarerra" do
    assert_difference('Caballoxcarerra.count', -1) do
      delete :destroy, id: @caballoxcarerra
    end

    assert_redirected_to caballoxcarerras_path
  end
end
