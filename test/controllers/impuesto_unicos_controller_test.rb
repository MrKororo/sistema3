require 'test_helper'

class ImpuestoUnicosControllerTest < ActionController::TestCase
  setup do
    @impuesto_unico = impuesto_unicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:impuesto_unicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create impuesto_unico" do
    assert_difference('ImpuestoUnico.count') do
      post :create, impuesto_unico: { factor: @impuesto_unico.factor, imponibleMaximo: @impuesto_unico.imponibleMaximo, imponibleMinimo: @impuesto_unico.imponibleMinimo, impuestoEfectivoMax: @impuesto_unico.impuestoEfectivoMax, rebaja: @impuesto_unico.rebaja }
    end

    assert_redirected_to impuesto_unico_path(assigns(:impuesto_unico))
  end

  test "should show impuesto_unico" do
    get :show, id: @impuesto_unico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @impuesto_unico
    assert_response :success
  end

  test "should update impuesto_unico" do
    patch :update, id: @impuesto_unico, impuesto_unico: { factor: @impuesto_unico.factor, imponibleMaximo: @impuesto_unico.imponibleMaximo, imponibleMinimo: @impuesto_unico.imponibleMinimo, impuestoEfectivoMax: @impuesto_unico.impuestoEfectivoMax, rebaja: @impuesto_unico.rebaja }
    assert_redirected_to impuesto_unico_path(assigns(:impuesto_unico))
  end

  test "should destroy impuesto_unico" do
    assert_difference('ImpuestoUnico.count', -1) do
      delete :destroy, id: @impuesto_unico
    end

    assert_redirected_to impuesto_unicos_path
  end
end
