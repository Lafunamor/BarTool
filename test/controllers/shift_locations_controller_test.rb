require 'test_helper'

class ShiftLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shift_location = shift_locations(:one)
  end

  test "should get index" do
    get shift_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_shift_location_url
    assert_response :success
  end

  test "should create shift_location" do
    assert_difference('ShiftLocation.count') do
      post shift_locations_url, params: { shift_location: {  } }
    end

    assert_redirected_to shift_location_url(ShiftLocation.last)
  end

  test "should show shift_location" do
    get shift_location_url(@shift_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_shift_location_url(@shift_location)
    assert_response :success
  end

  test "should update shift_location" do
    patch shift_location_url(@shift_location), params: { shift_location: {  } }
    assert_redirected_to shift_location_url(@shift_location)
  end

  test "should destroy shift_location" do
    assert_difference('ShiftLocation.count', -1) do
      delete shift_location_url(@shift_location)
    end

    assert_redirected_to shift_locations_url
  end
end
