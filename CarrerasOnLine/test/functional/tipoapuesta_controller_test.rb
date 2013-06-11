require 'test_helper'

class TipoapuestaControllerTest < ActionController::TestCase
  setup do
    @tipoapuestum = tipoapuesta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipoapuesta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipoapuestum" do
    assert_difference('Tipoapuestum.count') do
      post :create, tipoapuestum: { nombre: @tipoapuestum.nombre }
    end

    assert_redirected_to tipoapuestum_path(assigns(:tipoapuestum))
  end

  test "should show tipoapuestum" do
    get :show, id: @tipoapuestum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipoapuestum
    assert_response :success
  end

  test "should update tipoapuestum" do
    put :update, id: @tipoapuestum, tipoapuestum: { nombre: @tipoapuestum.nombre }
    assert_redirected_to tipoapuestum_path(assigns(:tipoapuestum))
  end

  test "should destroy tipoapuestum" do
    assert_difference('Tipoapuestum.count', -1) do
      delete :destroy, id: @tipoapuestum
    end

    assert_redirected_to tipoapuesta_path
  end
end
