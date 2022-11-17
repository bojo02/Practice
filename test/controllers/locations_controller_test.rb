require "test_helper"

class LocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @location = locations(:one)
  end

  test "should get index" do
    get locations_url
    assert_response :success
  end

  test "should get new" do
    get new_location_url
    assert_response :success
  end

  test "should create location" do
    assert_difference("Location.count") do
      post locations_url, params: { location: { city_name: @location.city_name, continent_code: @location.continent_code, continent_name: @location.continent_name, country_iso_code: @location.country_iso_code, country_name: @location.country_name, geoname_id: @location.geoname_id, is_in_european_union: @location.is_in_european_union, locale_code: @location.locale_code, metro_code: @location.metro_code, subdivision_1_iso_code: @location.subdivision_1_iso_code, subdivision_1_name: @location.subdivision_1_name, subdivision_2_iso_code: @location.subdivision_2_iso_code, subdivision_2_name: @location.subdivision_2_name, time_zone: @location.time_zone } }
    end

    assert_redirected_to location_url(Location.last)
  end

  test "should show location" do
    get location_url(@location)
    assert_response :success
  end

  test "should get edit" do
    get edit_location_url(@location)
    assert_response :success
  end

  test "should update location" do
    patch location_url(@location), params: { location: { city_name: @location.city_name, continent_code: @location.continent_code, continent_name: @location.continent_name, country_iso_code: @location.country_iso_code, country_name: @location.country_name, geoname_id: @location.geoname_id, is_in_european_union: @location.is_in_european_union, locale_code: @location.locale_code, metro_code: @location.metro_code, subdivision_1_iso_code: @location.subdivision_1_iso_code, subdivision_1_name: @location.subdivision_1_name, subdivision_2_iso_code: @location.subdivision_2_iso_code, subdivision_2_name: @location.subdivision_2_name, time_zone: @location.time_zone } }
    assert_redirected_to location_url(@location)
  end

  test "should destroy location" do
    assert_difference("Location.count", -1) do
      delete location_url(@location)
    end

    assert_redirected_to locations_url
  end
end
