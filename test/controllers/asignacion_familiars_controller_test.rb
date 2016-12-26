require 'test_helper'

class AsignacionFamiliarsControllerTest < ActionController::TestCase
  setup do
    @asignacion_familiar = asignacion_familiars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asignacion_familiars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asignacion_familiar" do
    assert_difference('AsignacionFamiliar.count') do
      post :create, asignacion_familiar: { monto: @asignacion_familiar.monto, requisitoMaximo: @asignacion_familiar.requisitoMaximo, requisitoMinimo: @asignacion_familiar.requisitoMinimo, tramo: @asignacion_familiar.tramo }
    end

    assert_redirected_to asignacion_familiar_path(assigns(:asignacion_familiar))
  end

  test "should show asignacion_familiar" do
    get :show, id: @asignacion_familiar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asignacion_familiar
    assert_response :success
  end

  test "should update asignacion_familiar" do
    patch :update, id: @asignacion_familiar, asignacion_familiar: { monto: @asignacion_familiar.monto, requisitoMaximo: @asignacion_familiar.requisitoMaximo, requisitoMinimo: @asignacion_familiar.requisitoMinimo, tramo: @asignacion_familiar.tramo }
    assert_redirected_to asignacion_familiar_path(assigns(:asignacion_familiar))
  end

  test "should destroy asignacion_familiar" do
    assert_difference('AsignacionFamiliar.count', -1) do
      delete :destroy, id: @asignacion_familiar
    end

    assert_redirected_to asignacion_familiars_path
  end
end
