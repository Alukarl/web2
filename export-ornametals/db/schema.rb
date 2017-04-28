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

ActiveRecord::Schema.define(version: 20170327222018) do

  create_table "calculates", force: :cascade do |t|
    t.float    "number"
    t.float    "temp_carry"
    t.float    "cant_container"
    t.integer  "Plant_id"
    t.integer  "Containert_id"
    t.integer  "Way_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["Containert_id"], name: "index_calculates_on_Containert_id"
    t.index ["Plant_id"], name: "index_calculates_on_Plant_id"
    t.index ["Way_id"], name: "index_calculates_on_Way_id"
  end

  create_table "containerts", force: :cascade do |t|
    t.float    "depreciation"
    t.float    "m_area"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "plants", force: :cascade do |t|
    t.string   "variant"
    t.float    "temperature"
    t.float    "m_area"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "ways", force: :cascade do |t|
    t.float    "distance"
    t.float    "stopes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
