require File.dirname(__FILE__) + '/../test_helper'

class SaransControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:sarans)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_saran
    assert_difference('Saran.count') do
      post :create, :saran => { }
    end

    assert_redirected_to saran_path(assigns(:saran))
  end

  def test_should_show_saran
    get :show, :id => sarans(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => sarans(:one).id
    assert_response :success
  end

  def test_should_update_saran
    put :update, :id => sarans(:one).id, :saran => { }
    assert_redirected_to saran_path(assigns(:saran))
  end

  def test_should_destroy_saran
    assert_difference('Saran.count', -1) do
      delete :destroy, :id => sarans(:one).id
    end

    assert_redirected_to sarans_path
  end
end
