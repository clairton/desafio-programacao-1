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

ActiveRecord::Schema.define(version: 20171103111152) do

  create_table "inputs", force: :cascade do |t|
    t.string "content", null: false
    t.decimal "total", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.string "purchaser_name", null: false
    t.string "item_description", null: false
    t.decimal "item_price", null: false
    t.decimal "purchase_count", null: false
    t.decimal "purchase_total", null: false
    t.string "merchant_address", null: false
    t.string "merchant_name", null: false
    t.integer "input_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["input_id"], name: "index_purchases_on_input_id"
  end

end
