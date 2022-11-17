# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_16_112325) do
  create_table "ips", force: :cascade do |t|
    t.string "network"
    t.integer "geoname_id"
    t.integer "registered_country_geoname_id"
    t.integer "represented_country_geoname_id"
    t.integer "is_anonymous_proxy"
    t.integer "is_satellite_provider"
    t.string "postal_code"
    t.decimal "latitude"
    t.decimal "longitude"
    t.integer "accuracy_radius"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ip_start"
    t.string "ip_end"
    t.integer "ip_start_number"
    t.integer "ip_end_number"
  end

  create_table "locations", force: :cascade do |t|
    t.integer "geoname_id"
    t.string "locale_code"
    t.string "continent_code"
    t.string "continent_name"
    t.string "country_iso_code"
    t.string "country_name"
    t.string "subdivision_1_iso_code"
    t.string "subdivision_1_name"
    t.string "subdivision_2_iso_code"
    t.string "subdivision_2_name"
    t.string "city_name"
    t.string "metro_code"
    t.string "time_zone"
    t.integer "is_in_european_union"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "storages", force: :cascade do |t|
    t.string "name"
    t.integer "location_id", null: false
    t.integer "ip_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ip_id"], name: "index_storages_on_ip_id"
    t.index ["location_id"], name: "index_storages_on_location_id"
  end

  add_foreign_key "storages", "ips"
  add_foreign_key "storages", "locations"
end
