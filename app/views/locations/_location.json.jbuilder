json.extract! location, :id, :geoname_id, :locale_code, :continent_code, :continent_name, :country_iso_code, :country_name, :subdivision_1_iso_code, :subdivision_1_name, :subdivision_2_iso_code, :subdivision_2_name, :city_name, :metro_code, :time_zone, :is_in_european_union, :created_at, :updated_at
json.url location_url(location, format: :json)
