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

ActiveRecord::Schema.define(version: 2021_09_16_155029) do

  create_table "maps", force: :cascade do |t|
    t.string "name"
    t.integer "startx"
    t.integer "starty"
    t.integer "endx"
    t.integer "endy"
    t.integer "height"
    t.integer "width"
    t.integer "min_activeness"
    t.integer "max_activeness"
    t.integer "min_prosperity"
    t.integer "max_prosperity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "maps_unions", id: false, force: :cascade do |t|
    t.integer "map_id", null: false
    t.integer "union_id", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "x"
    t.integer "y"
    t.integer "prosperity"
    t.integer "activeness"
    t.integer "kills"
    t.string "status"
    t.integer "union_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "blueprints"
    t.datetime "attention"
    t.index ["union_id"], name: "index_players_on_union_id"
  end

  create_table "unions", force: :cascade do |t|
    t.string "name"
    t.integer "members"
    t.integer "prosperity"
    t.integer "region"
    t.integer "cities"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "color"
  end

  add_foreign_key "players", "unions"
end
