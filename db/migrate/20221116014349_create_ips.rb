class CreateIps < ActiveRecord::Migration[7.0]
  def change
    create_table :ips do |t|
      t.string :network
      t.integer :geoname_id
      t.integer :registered_country_geoname_id
      t.integer :represented_country_geoname_id
      t.integer :is_anonymous_proxy
      t.integer :is_satellite_provider
      t.string :postal_code
      t.decimal :latitude
      t.decimal :longitude
      t.integer :accuracy_radius

      t.timestamps
    end
  end
end
