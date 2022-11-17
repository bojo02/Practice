json.extract! ip, :id, :network, :geoname_id, :registered_country_geoname_id, :represented_country_geoname_id, :is_anonymous_proxy, :is_satellite_provider, :postal_code, :latitude, :longitude, :accuracy_radius, :created_at, :updated_at
json.url ip_url(ip, format: :json)
