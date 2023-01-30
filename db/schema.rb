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

ActiveRecord::Schema[7.0].define(version: 2023_01_25_174737) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "currencies", force: :cascade do |t|
    t.string "currency_name", null: false
    t.string "currency_code", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "frames", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.integer "status", null: false
    t.integer "stock", null: false
    t.decimal "price", precision: 12, scale: 6, null: false
    t.bigint "currency_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["currency_id"], name: "index_frames_on_currency_id"
  end

  create_table "lenses", force: :cascade do |t|
    t.string "colour", null: false
    t.string "description"
    t.integer "prescription_type", null: false
    t.integer "lens_type", null: false
    t.integer "stock", null: false
    t.decimal "price", precision: 12, scale: 6, null: false
    t.bigint "currency_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["currency_id"], name: "index_lenses_on_currency_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "api_token", null: false
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "frames", "currencies"
  add_foreign_key "lenses", "currencies"
end
