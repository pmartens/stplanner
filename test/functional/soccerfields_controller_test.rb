require 'test_helper'

class SoccerfieldsControllerTest < ActionController::TestCase
  setup do
    @soccerfield = soccerfields(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:soccerfields)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create soccerfield" do
    assert_difference('Soccerfield.count') do
      post :create, soccerfield: { description: @soccerfield.description, fieldcode: @soccerfield.fieldcode, name: @soccerfield.name, present: @soccerfield.present }
    end

    assert_redirected_to soccerfield_path(assigns(:soccerfield))
  end

  test "should show soccerfield" do
    get :show, id: @soccerfield
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @soccerfield
    assert_response :success
  end

  test "should update soccerfield" do
    put :update, id: @soccerfield, soccerfield: { description: @soccerfield.description, fieldcode: @soccerfield.fieldcode, name: @soccerfield.name, present: @soccerfield.present }
    assert_redirected_to soccerfield_path(assigns(:soccerfield))
  end

  test "should destroy soccerfield" do
    assert_difference('Soccerfield.count', -1) do
      delete :destroy, id: @soccerfield
    end

    assert_redirected_to soccerfields_path
  end
end
