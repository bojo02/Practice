class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.integer :geoname_id
      t.string :locale_code
      t.string :continent_code
      t.string :continent_name
      t.string :country_iso_code
      t.string :country_name
      t.string :subdivision_1_iso_code
      t.string :subdivision_1_name
      t.string :subdivision_2_iso_code
      t.string :subdivision_2_name
      t.string :city_name
      t.string :metro_code
      t.string :time_zone
      t.integer :is_in_european_union

      t.timestamps
    end
  end
end
