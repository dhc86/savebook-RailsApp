require 'test_helper'

class ImageprofilesControllerTest < ActionController::TestCase
  setup do
    @imageprofile = imageprofiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imageprofiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imageprofile" do
    assert_difference('Imageprofile.count') do
      post :create, imageprofile: { user_id: @imageprofile.user_id }
    end

    assert_redirected_to imageprofile_path(assigns(:imageprofile))
  end

  test "should show imageprofile" do
    get :show, id: @imageprofile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imageprofile
    assert_response :success
  end

  test "should update imageprofile" do
    patch :update, id: @imageprofile, imageprofile: { user_id: @imageprofile.user_id }
    assert_redirected_to imageprofile_path(assigns(:imageprofile))
  end

  test "should destroy imageprofile" do
    assert_difference('Imageprofile.count', -1) do
      delete :destroy, id: @imageprofile
    end

    assert_redirected_to imageprofiles_path
  end
end
