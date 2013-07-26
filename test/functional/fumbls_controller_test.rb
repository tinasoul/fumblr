require 'test_helper'

class FumblsControllerTest < ActionController::TestCase
  setup do
    @fumbl = fumbls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fumbls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fumbl" do
    assert_difference('Fumbl.count') do
      post :create, fumbl: { body: @fumbl.body, title: @fumbl.title }
    end

    assert_redirected_to fumbl_path(assigns(:fumbl))
  end

  test "should show fumbl" do
    get :show, id: @fumbl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fumbl
    assert_response :success
  end

  test "should update fumbl" do
    put :update, id: @fumbl, fumbl: { body: @fumbl.body, title: @fumbl.title }
    assert_redirected_to fumbl_path(assigns(:fumbl))
  end

  test "should destroy fumbl" do
    assert_difference('Fumbl.count', -1) do
      delete :destroy, id: @fumbl
    end

    assert_redirected_to fumbls_path
  end
end
