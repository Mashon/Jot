require 'test_helper'

class JotsControllerTest < ActionController::TestCase
  setup do
    @jot = jots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jot" do
    assert_difference('Jot.count') do
      post :create, jot: {  }
    end

    assert_redirected_to jot_path(assigns(:jot))
  end

  test "should show jot" do
    get :show, id: @jot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jot
    assert_response :success
  end

  test "should update jot" do
    patch :update, id: @jot, jot: {  }
    assert_redirected_to jot_path(assigns(:jot))
  end

  test "should destroy jot" do
    assert_difference('Jot.count', -1) do
      delete :destroy, id: @jot
    end

    assert_redirected_to jots_path
  end
end
