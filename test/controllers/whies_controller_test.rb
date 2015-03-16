require 'test_helper'

class WhiesControllerTest < ActionController::TestCase
  setup do
    @why = whies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:whies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create why" do
    assert_difference('Why.count') do
      post :create, why: { content: @why.content, title: @why.title }
    end

    assert_redirected_to why_path(assigns(:why))
  end

  test "should show why" do
    get :show, id: @why
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @why
    assert_response :success
  end

  test "should update why" do
    patch :update, id: @why, why: { content: @why.content, title: @why.title }
    assert_redirected_to why_path(assigns(:why))
  end

  test "should destroy why" do
    assert_difference('Why.count', -1) do
      delete :destroy, id: @why
    end

    assert_redirected_to whies_path
  end
end
