require 'test_helper'

class DescuentoAdicionalsControllerTest < ActionController::TestCase
  setup do
    @descuento_adicional = descuento_adicionals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:descuento_adicionals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create descuento_adicional" do
    assert_difference('DescuentoAdicional.count') do
      post :create, descuento_adicional: { descuento_adicional: @descuento_adicional.descuento_adicional, detalle: @descuento_adicional.detalle }
    end

    assert_redirected_to descuento_adicional_path(assigns(:descuento_adicional))
  end

  test "should show descuento_adicional" do
    get :show, id: @descuento_adicional
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @descuento_adicional
    assert_response :success
  end

  test "should update descuento_adicional" do
    patch :update, id: @descuento_adicional, descuento_adicional: { descuento_adicional: @descuento_adicional.descuento_adicional, detalle: @descuento_adicional.detalle }
    assert_redirected_to descuento_adicional_path(assigns(:descuento_adicional))
  end

  test "should destroy descuento_adicional" do
    assert_difference('DescuentoAdicional.count', -1) do
      delete :destroy, id: @descuento_adicional
    end

    assert_redirected_to descuento_adicionals_path
  end
end
