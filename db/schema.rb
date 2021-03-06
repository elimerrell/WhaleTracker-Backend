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

ActiveRecord::Schema.define(version: 2019_04_23_152514) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sightings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "whale_sighting_id"
    t.string "species"
    t.integer "quantity"
    t.string "description"
    t.float "latitude"
    t.float "longitude"
    t.string "location"
    t.string "orca_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.string "location"
    t.string "vessel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "whale_sightings", force: :cascade do |t|
    t.integer "sighting_id"
    t.integer "whale_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "whales", force: :cascade do |t|
    t.string "common_name"
    t.string "genus"
    t.string "species"
    t.text "description"
    t.string "range"
    t.text "behaviors"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
