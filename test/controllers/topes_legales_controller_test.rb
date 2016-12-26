require 'test_helper'

class TopesLegalesControllerTest < ActionController::TestCase
  setup do
    @topes_legale = topes_legales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:topes_legales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create topes_legale" do
    assert_difference('TopesLegale.count') do
      post :create, topes_legale: { topeMaximo: @topes_legale.topeMaximo, topeMinimo: @topes_legale.topeMinimo }
    end

    assert_redirected_to topes_legale_path(assigns(:topes_legale))
  end

  test "should show topes_legale" do
    get :show, id: @topes_legale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @topes_legale
    assert_response :success
  end

  test "should update topes_legale" do
    patch :update, id: @topes_legale, topes_legale: { topeMaximo: @topes_legale.topeMaximo, topeMinimo: @topes_legale.topeMinimo }
    assert_redirected_to topes_legale_path(assigns(:topes_legale))
  end

  test "should destroy topes_legale" do
    assert_difference('TopesLegale.count', -1) do
      delete :destroy, id: @topes_legale
    end

    assert_redirected_to topes_legales_path
  end
end
