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

ActiveRecord::Schema[8.1].define(version: 2026_06_08_022847) do
  create_table "bands", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "lineups", force: :cascade do |t|
    t.integer "band_id", null: false
    t.datetime "created_at", null: false
    t.integer "show_id", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_lineups_on_band_id"
    t.index ["show_id", "band_id"], name: "index_lineups_on_show_id_and_band_id", unique: true
    t.index ["show_id"], name: "index_lineups_on_show_id"
  end

  create_table "shows", force: :cascade do |t|
    t.string "city"
    t.datetime "created_at", null: false
    t.date "date"
    t.string "time"
    t.datetime "updated_at", null: false
    t.string "venue"
  end

  add_foreign_key "lineups", "bands"
  add_foreign_key "lineups", "shows"
end
