require 'test_helper'

class LiquidacionsControllerTest < ActionController::TestCase
  setup do
    @liquidacion = liquidacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:liquidacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create liquidacion" do
    assert_difference('Liquidacion.count') do
      post :create, liquidacion: { asignacion_id: @liquidacion.asignacion_id, bonificacion_id: @liquidacion.bonificacion_id, cotizacion_voluntaria: @liquidacion.cotizacion_voluntaria, desc_legales: @liquidacion.desc_legales, desc_varios: @liquidacion.desc_varios, descuento_adicional_id: @liquidacion.descuento_adicional_id, descuento_afp: @liquidacion.descuento_afp, descuento_isapre: @liquidacion.descuento_isapre, fecha_pago: @liquidacion.fecha_pago, habere_id: @liquidacion.habere_id, horas_extra: @liquidacion.horas_extra, horas_trabajadas: @liquidacion.horas_trabajadas, impuesto: @liquidacion.impuesto, liquido_pagar: @liquidacion.liquido_pagar, personal_id: @liquidacion.personal_id, remuneracion: @liquidacion.remuneracion, sindicato: @liquidacion.sindicato, total_haberes: @liquidacion.total_haberes, vacaciones: @liquidacion.vacaciones }
    end

    assert_redirected_to liquidacion_path(assigns(:liquidacion))
  end

  test "should show liquidacion" do
    get :show, id: @liquidacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @liquidacion
    assert_response :success
  end

  test "should update liquidacion" do
    patch :update, id: @liquidacion, liquidacion: { asignacion_id: @liquidacion.asignacion_id, bonificacion_id: @liquidacion.bonificacion_id, cotizacion_voluntaria: @liquidacion.cotizacion_voluntaria, desc_legales: @liquidacion.desc_legales, desc_varios: @liquidacion.desc_varios, descuento_adicional_id: @liquidacion.descuento_adicional_id, descuento_afp: @liquidacion.descuento_afp, descuento_isapre: @liquidacion.descuento_isapre, fecha_pago: @liquidacion.fecha_pago, habere_id: @liquidacion.habere_id, horas_extra: @liquidacion.horas_extra, horas_trabajadas: @liquidacion.horas_trabajadas, impuesto: @liquidacion.impuesto, liquido_pagar: @liquidacion.liquido_pagar, personal_id: @liquidacion.personal_id, remuneracion: @liquidacion.remuneracion, sindicato: @liquidacion.sindicato, total_haberes: @liquidacion.total_haberes, vacaciones: @liquidacion.vacaciones }
    assert_redirected_to liquidacion_path(assigns(:liquidacion))
  end

  test "should destroy liquidacion" do
    assert_difference('Liquidacion.count', -1) do
      delete :destroy, id: @liquidacion
    end

    assert_redirected_to liquidacions_path
  end
end
