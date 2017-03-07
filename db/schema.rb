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

ActiveRecord::Schema.define(version: 20170307004558) do

  create_table "admin_dishes", force: :cascade do |t|
    t.string   "dishgroup"
    t.string   "name"
    t.string   "description"
    t.decimal  "price"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "admin_items", force: :cascade do |t|
    t.decimal  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_orders", force: :cascade do |t|
    t.date     "date"
    t.decimal  "subtotal"
    t.decimal  "taxes"
    t.decimal  "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "address"
    t.string   "phone"
    t.string   "logo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
