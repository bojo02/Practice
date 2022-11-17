require "application_system_test_case"

class IpsTest < ApplicationSystemTestCase
  setup do
    @ip = ips(:one)
  end

  test "visiting the index" do
    visit ips_url
    assert_selector "h1", text: "Ips"
  end

  test "should create ip" do
    visit ips_url
    click_on "New ip"

    fill_in "Accuracy radius", with: @ip.accuracy_radius
    fill_in "Geoname", with: @ip.geoname_id
    fill_in "Is anonymous proxy", with: @ip.is_anonymous_proxy
    fill_in "Is satellite provider", with: @ip.is_satellite_provider
    fill_in "Latitude", with: @ip.latitude
    fill_in "Longitude", with: @ip.longitude
    fill_in "Network", with: @ip.network
    fill_in "Postal code", with: @ip.postal_code
    fill_in "Registered country geoname", with: @ip.registered_country_geoname_id
    fill_in "Represented country geoname", with: @ip.represented_country_geoname_id
    click_on "Create Ip"

    assert_text "Ip was successfully created"
    click_on "Back"
  end

  test "should update Ip" do
    visit ip_url(@ip)
    click_on "Edit this ip", match: :first

    fill_in "Accuracy radius", with: @ip.accuracy_radius
    fill_in "Geoname", with: @ip.geoname_id
    fill_in "Is anonymous proxy", with: @ip.is_anonymous_proxy
    fill_in "Is satellite provider", with: @ip.is_satellite_provider
    fill_in "Latitude", with: @ip.latitude
    fill_in "Longitude", with: @ip.longitude
    fill_in "Network", with: @ip.network
    fill_in "Postal code", with: @ip.postal_code
    fill_in "Registered country geoname", with: @ip.registered_country_geoname_id
    fill_in "Represented country geoname", with: @ip.represented_country_geoname_id
    click_on "Update Ip"

    assert_text "Ip was successfully updated"
    click_on "Back"
  end

  test "should destroy Ip" do
    visit ip_url(@ip)
    click_on "Destroy this ip", match: :first

    assert_text "Ip was successfully destroyed"
  end
end
