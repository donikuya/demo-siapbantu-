require File.dirname(__FILE__) + '/../test_helper'

class KontaksControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:kontaks)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_kontak
    assert_difference('Kontak.count') do
      post :create, :kontak => { }
    end

    assert_redirected_to kontak_path(assigns(:kontak))
  end

  def test_should_show_kontak
    get :show, :id => kontaks(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => kontaks(:one).id
    assert_response :success
  end

  def test_should_update_kontak
    put :update, :id => kontaks(:one).id, :kontak => { }
    assert_redirected_to kontak_path(assigns(:kontak))
  end

  def test_should_destroy_kontak
    assert_difference('Kontak.count', -1) do
      delete :destroy, :id => kontaks(:one).id
    end

    assert_redirected_to kontaks_path
  end
end
