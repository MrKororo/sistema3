require 'test_helper'

class SindicatosControllerTest < ActionController::TestCase
  setup do
    @sindicato = sindicatos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sindicatos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sindicato" do
    assert_difference('Sindicato.count') do
      post :create, sindicato: { cuota_sindical: @sindicato.cuota_sindical, nombre_sindicato: @sindicato.nombre_sindicato }
    end

    assert_redirected_to sindicato_path(assigns(:sindicato))
  end

  test "should show sindicato" do
    get :show, id: @sindicato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sindicato
    assert_response :success
  end

  test "should update sindicato" do
    patch :update, id: @sindicato, sindicato: { cuota_sindical: @sindicato.cuota_sindical, nombre_sindicato: @sindicato.nombre_sindicato }
    assert_redirected_to sindicato_path(assigns(:sindicato))
  end

  test "should destroy sindicato" do
    assert_difference('Sindicato.count', -1) do
      delete :destroy, id: @sindicato
    end

    assert_redirected_to sindicatos_path
  end
end
