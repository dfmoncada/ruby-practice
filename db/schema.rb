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

ActiveRecord::Schema.define(version: 2018_05_06_182709) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.datetime "starting_at"
    t.datetime "finished_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "description"
    t.integer "event_element_id"
    t.integer "measured_value"
    t.integer "type_id"
    t.index ["event_element_id"], name: "index_activities_on_event_element_id"
    t.index ["type_id"], name: "index_activities_on_type_id"
  end

  create_table "activity_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "unit_id"
    t.index ["unit_id"], name: "index_activity_types_on_unit_id"
  end

  create_table "event_elements", force: :cascade do |t|
    t.datetime "starting_at"
    t.datetime "due_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.boolean "reminder"
    t.integer "event_element_id"
    t.index ["event_element_id"], name: "index_event_elements_on_event_element_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "short"
  end

end
