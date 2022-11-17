json.extract! storage, :id, :name, :location_id, :ip_id, :created_at, :updated_at
json.url storage_url(storage, format: :json)
