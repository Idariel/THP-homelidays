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

ActiveRecord::Schema.define(version: 20180211222511) do

  create_table "images", force: :cascade do |t|
    t.string "name_image"
    t.string "url_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registered_users", force: :cascade do |t|
    t.string "name"
    t.string "firstname"
    t.string "address1"
    t.string "address2"
    t.integer "zip_code"
    t.string "city_name"
    t.string "area_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rented_places", force: :cascade do |t|
    t.string "address_place1"
    t.string "address_place2"
    t.integer "zip_code_place"
    t.string "city_name_place"
    t.string "area_code_place"
    t.string "description"
    t.integer "nb_of_room"
    t.string "facilities"
    t.string "other_informations"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "renters", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tenants", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
