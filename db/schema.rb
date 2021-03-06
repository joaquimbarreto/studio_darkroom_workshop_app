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

ActiveRecord::Schema.define(version: 2018_12_05_172513) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer "room_id"
    t.integer "photographer_id"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photo_equipment_bookings", force: :cascade do |t|
    t.integer "booking_id"
    t.integer "photo_equipment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photo_equipments", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.text "description"
    t.string "photo_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photographers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "telephone_number"
    t.integer "age"
    t.text "bio"
    t.string "specialty"
    t.boolean "is_admin?"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.integer "studio_id"
    t.string "dimensions"
    t.text "description"
    t.string "photo_path1"
    t.string "photo_path2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "studios", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "telephone_number"
    t.string "email"
    t.string "manager"
    t.boolean "kitchen"
    t.boolean "darkroom"
    t.boolean "parking"
    t.boolean "wi_fi"
    t.string "underground_station"
    t.string "description"
    t.string "photo_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
