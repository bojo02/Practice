require "test_helper"

class IpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ip = ips(:one)
  end

  test "should get index" do
    get ips_url
    assert_response :success
  end

  test "should get new" do
    get new_ip_url
    assert_response :success
  end

  test "should create ip" do
    assert_difference("Ip.count") do
      post ips_url, params: { ip: { accuracy_radius: @ip.accuracy_radius, geoname_id: @ip.geoname_id, is_anonymous_proxy: @ip.is_anonymous_proxy, is_satellite_provider: @ip.is_satellite_provider, latitude: @ip.latitude, longitude: @ip.longitude, network: @ip.network, postal_code: @ip.postal_code, registered_country_geoname_id: @ip.registered_country_geoname_id, represented_country_geoname_id: @ip.represented_country_geoname_id } }
    end

    assert_redirected_to ip_url(Ip.last)
  end

  test "should show ip" do
    get ip_url(@ip)
    assert_response :success
  end

  test "should get edit" do
    get edit_ip_url(@ip)
    assert_response :success
  end

  test "should update ip" do
    patch ip_url(@ip), params: { ip: { accuracy_radius: @ip.accuracy_radius, geoname_id: @ip.geoname_id, is_anonymous_proxy: @ip.is_anonymous_proxy, is_satellite_provider: @ip.is_satellite_provider, latitude: @ip.latitude, longitude: @ip.longitude, network: @ip.network, postal_code: @ip.postal_code, registered_country_geoname_id: @ip.registered_country_geoname_id, represented_country_geoname_id: @ip.represented_country_geoname_id } }
    assert_redirected_to ip_url(@ip)
  end

  test "should destroy ip" do
    assert_difference("Ip.count", -1) do
      delete ip_url(@ip)
    end

    assert_redirected_to ips_url
  end
end
