require 'test_helper'

class PersonalsControllerTest < ActionController::TestCase
  setup do
    @personal = personals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personal" do
    assert_difference('Personal.count') do
      post :create, personal: { afp_id: @personal.afp_id, apellidom_personal: @personal.apellidom_personal, apellidop_personal: @personal.apellidop_personal, banco_id: @personal.banco_id, centrocosto_id: @personal.centrocosto_id, fecha_ingreso: @personal.fecha_ingreso, isapre_id: @personal.isapre_id, nombre_personal: @personal.nombre_personal, numero_cuenta: @personal.numero_cuenta, personal_activo: @personal.personal_activo, rut_personal: @personal.rut_personal, sindicato_id: @personal.sindicato_id, subcategorium_id: @personal.subcategorium_id, tipocontrato_id: @personal.tipocontrato_id }
    end

    assert_redirected_to personal_path(assigns(:personal))
  end

  test "should show personal" do
    get :show, id: @personal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personal
    assert_response :success
  end

  test "should update personal" do
    patch :update, id: @personal, personal: { afp_id: @personal.afp_id, apellidom_personal: @personal.apellidom_personal, apellidop_personal: @personal.apellidop_personal, banco_id: @personal.banco_id, centrocosto_id: @personal.centrocosto_id, fecha_ingreso: @personal.fecha_ingreso, isapre_id: @personal.isapre_id, nombre_personal: @personal.nombre_personal, numero_cuenta: @personal.numero_cuenta, personal_activo: @personal.personal_activo, rut_personal: @personal.rut_personal, sindicato_id: @personal.sindicato_id, subcategorium_id: @personal.subcategorium_id, tipocontrato_id: @personal.tipocontrato_id }
    assert_redirected_to personal_path(assigns(:personal))
  end

  test "should destroy personal" do
    assert_difference('Personal.count', -1) do
      delete :destroy, id: @personal
    end

    assert_redirected_to personals_path
  end
end
