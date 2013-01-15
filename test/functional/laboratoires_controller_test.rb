require 'test_helper'

class LaboratoiresControllerTest < ActionController::TestCase
  setup do
    @laboratoire = laboratoires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:laboratoires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create laboratoire" do
    assert_difference('Laboratoire.count') do
      post :create, :laboratoire => { :nom => @laboratoire.nom }
    end

    assert_redirected_to laboratoire_path(assigns(:laboratoire))
  end

  test "should show laboratoire" do
    get :show, :id => @laboratoire
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @laboratoire
    assert_response :success
  end

  test "should update laboratoire" do
    put :update, :id => @laboratoire, :laboratoire => { :nom => @laboratoire.nom }
    assert_redirected_to laboratoire_path(assigns(:laboratoire))
  end

  test "should destroy laboratoire" do
    assert_difference('Laboratoire.count', -1) do
      delete :destroy, :id => @laboratoire
    end

    assert_redirected_to laboratoires_path
  end
end
