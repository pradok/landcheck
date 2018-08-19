# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_08_19_123421) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer "feature_id"
    t.string "full_address"
    t.integer "lga_code"
    t.string "state", limit: 3
    t.integer "postcode"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_addresses_on_property_id"
  end

  create_table "lgas", force: :cascade do |t|
    t.integer "code", null: false
    t.string "name"
    t.string "long_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_lgas_on_code", unique: true
  end

  create_table "properties", force: :cascade do |t|
    t.integer "council_property_number"
    t.decimal "longitude", precision: 10, scale: 6
    t.decimal "latitude", precision: 10, scale: 6
    t.integer "lga_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lga_code"], name: "index_properties_on_lga_code"
  end

  add_foreign_key "addresses", "properties"
end
