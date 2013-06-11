require 'test_helper'

class DetalleapuestaControllerTest < ActionController::TestCase
  setup do
    @detalleapuestum = detalleapuesta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detalleapuesta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detalleapuestum" do
    assert_difference('Detalleapuestum.count') do
      post :create, detalleapuestum: { idapuesta: @detalleapuestum.idapuesta, idcaballo: @detalleapuestum.idcaballo }
    end

    assert_redirected_to detalleapuestum_path(assigns(:detalleapuestum))
  end

  test "should show detalleapuestum" do
    get :show, id: @detalleapuestum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detalleapuestum
    assert_response :success
  end

  test "should update detalleapuestum" do
    put :update, id: @detalleapuestum, detalleapuestum: { idapuesta: @detalleapuestum.idapuesta, idcaballo: @detalleapuestum.idcaballo }
    assert_redirected_to detalleapuestum_path(assigns(:detalleapuestum))
  end

  test "should destroy detalleapuestum" do
    assert_difference('Detalleapuestum.count', -1) do
      delete :destroy, id: @detalleapuestum
    end

    assert_redirected_to detalleapuesta_path
  end
end
