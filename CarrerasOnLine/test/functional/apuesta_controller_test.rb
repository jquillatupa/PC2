require 'test_helper'

class ApuestaControllerTest < ActionController::TestCase
  setup do
    @apuestum = apuesta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apuesta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apuestum" do
    assert_difference('Apuestum.count') do
      post :create, apuestum: { idapuesta: @apuestum.idapuesta, idcarrera: @apuestum.idcarrera, idtipoapuesta: @apuestum.idtipoapuesta, montoapuesta: @apuestum.montoapuesta, montopagado: @apuestum.montopagado }
    end

    assert_redirected_to apuestum_path(assigns(:apuestum))
  end

  test "should show apuestum" do
    get :show, id: @apuestum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apuestum
    assert_response :success
  end

  test "should update apuestum" do
    put :update, id: @apuestum, apuestum: { idapuesta: @apuestum.idapuesta, idcarrera: @apuestum.idcarrera, idtipoapuesta: @apuestum.idtipoapuesta, montoapuesta: @apuestum.montoapuesta, montopagado: @apuestum.montopagado }
    assert_redirected_to apuestum_path(assigns(:apuestum))
  end

  test "should destroy apuestum" do
    assert_difference('Apuestum.count', -1) do
      delete :destroy, id: @apuestum
    end

    assert_redirected_to apuesta_path
  end
end
