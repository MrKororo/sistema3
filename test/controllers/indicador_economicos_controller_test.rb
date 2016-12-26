require 'test_helper'

class IndicadorEconomicosControllerTest < ActionController::TestCase
  setup do
    @indicador_economico = indicador_economicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indicador_economicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indicador_economico" do
    assert_difference('IndicadorEconomico.count') do
      post :create, indicador_economico: { indicador: @indicador_economico.indicador, valor: @indicador_economico.valor }
    end

    assert_redirected_to indicador_economico_path(assigns(:indicador_economico))
  end

  test "should show indicador_economico" do
    get :show, id: @indicador_economico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indicador_economico
    assert_response :success
  end

  test "should update indicador_economico" do
    patch :update, id: @indicador_economico, indicador_economico: { indicador: @indicador_economico.indicador, valor: @indicador_economico.valor }
    assert_redirected_to indicador_economico_path(assigns(:indicador_economico))
  end

  test "should destroy indicador_economico" do
    assert_difference('IndicadorEconomico.count', -1) do
      delete :destroy, id: @indicador_economico
    end

    assert_redirected_to indicador_economicos_path
  end
end
