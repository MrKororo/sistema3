require 'test_helper'

class IsapresControllerTest < ActionController::TestCase
  setup do
    @isapre = isapres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:isapres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create isapre" do
    assert_difference('Isapre.count') do
      post :create, isapre: { isapre: @isapre.isapre }
    end

    assert_redirected_to isapre_path(assigns(:isapre))
  end

  test "should show isapre" do
    get :show, id: @isapre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @isapre
    assert_response :success
  end

  test "should update isapre" do
    patch :update, id: @isapre, isapre: { isapre: @isapre.isapre }
    assert_redirected_to isapre_path(assigns(:isapre))
  end

  test "should destroy isapre" do
    assert_difference('Isapre.count', -1) do
      delete :destroy, id: @isapre
    end

    assert_redirected_to isapres_path
  end
end
