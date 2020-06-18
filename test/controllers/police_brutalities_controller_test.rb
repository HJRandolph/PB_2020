require 'test_helper'

class PoliceBrutalitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @police_brutality = police_brutalities(:one)
  end

  test "should get index" do
    get police_brutalities_url
    assert_response :success
  end

  test "should get new" do
    get new_police_brutality_url
    assert_response :success
  end

  test "should create police_brutality" do
    assert_difference('PoliceBrutality.count') do
      post police_brutalities_url, params: { police_brutality: {  } }
    end

    assert_redirected_to police_brutality_url(PoliceBrutality.last)
  end

  test "should show police_brutality" do
    get police_brutality_url(@police_brutality)
    assert_response :success
  end

  test "should get edit" do
    get edit_police_brutality_url(@police_brutality)
    assert_response :success
  end

  test "should update police_brutality" do
    patch police_brutality_url(@police_brutality), params: { police_brutality: {  } }
    assert_redirected_to police_brutality_url(@police_brutality)
  end

  test "should destroy police_brutality" do
    assert_difference('PoliceBrutality.count', -1) do
      delete police_brutality_url(@police_brutality)
    end

    assert_redirected_to police_brutalities_url
  end
end
