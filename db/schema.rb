# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_10_103545) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "launches", force: :cascade do |t|
    t.string "name"
    t.string "details"
    t.date "launch_date_utc"
    t.date "static_fire_utc"
    t.string "launch_illustration"
    t.string "launch_1"
    t.string "launch_2"
    t.boolean "success"
    t.bigint "rocket_id", null: false
    t.bigint "launchpad_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["launchpad_id"], name: "index_launches_on_launchpad_id"
    t.index ["rocket_id"], name: "index_launches_on_rocket_id"
  end

  create_table "launchpads", force: :cascade do |t|
    t.string "full_name"
    t.string "status"
    t.string "locality"
    t.string "region"
    t.integer "latitude"
    t.integer "longitude"
    t.text "details"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rockets", force: :cascade do |t|
    t.string "name"
    t.string "customer"
    t.string "core"
    t.string "engine"
    t.string "engine_version"
    t.string "propergol_1"
    t.string "propergol_2"
    t.integer "landing_legs"
    t.boolean "activity"
    t.integer "stage"
    t.integer "booster"
    t.text "description"
    t.integer "height"
    t.integer "diameter"
    t.integer "mass"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "launches", "launchpads"
  add_foreign_key "launches", "rockets"
end
