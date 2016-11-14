require 'test_helper'

class CentrocostosControllerTest < ActionController::TestCase
  setup do
    @centrocosto = centrocostos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:centrocostos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create centrocosto" do
    assert_difference('Centrocosto.count') do
      post :create, centrocosto: { codigo: @centrocosto.codigo, detalle_centro: @centrocosto.detalle_centro, nombre: @centrocosto.nombre }
    end

    assert_redirected_to centrocosto_path(assigns(:centrocosto))
  end

  test "should show centrocosto" do
    get :show, id: @centrocosto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @centrocosto
    assert_response :success
  end

  test "should update centrocosto" do
    patch :update, id: @centrocosto, centrocosto: { codigo: @centrocosto.codigo, detalle_centro: @centrocosto.detalle_centro, nombre: @centrocosto.nombre }
    assert_redirected_to centrocosto_path(assigns(:centrocosto))
  end

  test "should destroy centrocosto" do
    assert_difference('Centrocosto.count', -1) do
      delete :destroy, id: @centrocosto
    end

    assert_redirected_to centrocostos_path
  end
end
