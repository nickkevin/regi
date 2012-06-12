require 'test_helper'

class RegistrationsControllerTest < ActionController::TestCase
  setup do
    @registration = registrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registration" do
    assert_difference('Registration.count') do
      post :create, :registration => { :Confirm_Password => @registration.Confirm_Password, :Email_ID => @registration.Email_ID, :I_Want_to_be_a => @registration.I_Want_to_be_a, :Name => @registration.Name, :Password => @registration.Password, :User_Name => @registration.User_Name }
    end

    assert_redirected_to registration_path(assigns(:registration))
  end

  test "should show registration" do
    get :show, :id => @registration
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @registration
    assert_response :success
  end

  test "should update registration" do
    put :update, :id => @registration, :registration => { :Confirm_Password => @registration.Confirm_Password, :Email_ID => @registration.Email_ID, :I_Want_to_be_a => @registration.I_Want_to_be_a, :Name => @registration.Name, :Password => @registration.Password, :User_Name => @registration.User_Name }
    assert_redirected_to registration_path(assigns(:registration))
  end

  test "should destroy registration" do
    assert_difference('Registration.count', -1) do
      delete :destroy, :id => @registration
    end

    assert_redirected_to registrations_path
  end
end
