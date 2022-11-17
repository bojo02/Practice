require "application_system_test_case"

class LocationsTest < ApplicationSystemTestCase
  setup do
    @location = locations(:one)
  end

  test "visiting the index" do
    visit locations_url
    assert_selector "h1", text: "Locations"
  end

  test "should create location" do
    visit locations_url
    click_on "New location"

    fill_in "City name", with: @location.city_name
    fill_in "Continent code", with: @location.continent_code
    fill_in "Continent name", with: @location.continent_name
    fill_in "Country iso code", with: @location.country_iso_code
    fill_in "Country name", with: @location.country_name
    fill_in "Geoname", with: @location.geoname_id
    fill_in "Is in european union", with: @location.is_in_european_union
    fill_in "Locale code", with: @location.locale_code
    fill_in "Metro code", with: @location.metro_code
    fill_in "Subdivision 1 iso code", with: @location.subdivision_1_iso_code
    fill_in "Subdivision 1 name", with: @location.subdivision_1_name
    fill_in "Subdivision 2 iso code", with: @location.subdivision_2_iso_code
    fill_in "Subdivision 2 name", with: @location.subdivision_2_name
    fill_in "Time zone", with: @location.time_zone
    click_on "Create Location"

    assert_text "Location was successfully created"
    click_on "Back"
  end

  test "should update Location" do
    visit location_url(@location)
    click_on "Edit this location", match: :first

    fill_in "City name", with: @location.city_name
    fill_in "Continent code", with: @location.continent_code
    fill_in "Continent name", with: @location.continent_name
    fill_in "Country iso code", with: @location.country_iso_code
    fill_in "Country name", with: @location.country_name
    fill_in "Geoname", with: @location.geoname_id
    fill_in "Is in european union", with: @location.is_in_european_union
    fill_in "Locale code", with: @location.locale_code
    fill_in "Metro code", with: @location.metro_code
    fill_in "Subdivision 1 iso code", with: @location.subdivision_1_iso_code
    fill_in "Subdivision 1 name", with: @location.subdivision_1_name
    fill_in "Subdivision 2 iso code", with: @location.subdivision_2_iso_code
    fill_in "Subdivision 2 name", with: @location.subdivision_2_name
    fill_in "Time zone", with: @location.time_zone
    click_on "Update Location"

    assert_text "Location was successfully updated"
    click_on "Back"
  end

  test "should destroy Location" do
    visit location_url(@location)
    click_on "Destroy this location", match: :first

    assert_text "Location was successfully destroyed"
  end
end
