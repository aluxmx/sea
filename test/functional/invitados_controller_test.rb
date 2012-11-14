require 'test_helper'

class InvitadosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invitados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invitado" do
    assert_difference('Invitado.count') do
      post :create, :invitado => { }
    end

    assert_redirected_to invitado_path(assigns(:invitado))
  end

  test "should show invitado" do
    get :show, :id => invitados(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => invitados(:one).to_param
    assert_response :success
  end

  test "should update invitado" do
    put :update, :id => invitados(:one).to_param, :invitado => { }
    assert_redirected_to invitado_path(assigns(:invitado))
  end

  test "should destroy invitado" do
    assert_difference('Invitado.count', -1) do
      delete :destroy, :id => invitados(:one).to_param
    end

    assert_redirected_to invitados_path
  end
end
