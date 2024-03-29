# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140507093006) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lists", force: true do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.string   "list_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lists", ["user_id", "product_id"], name: "index_lists_on_user_id_and_product_id", using: :btree

  create_table "lists_products", id: false, force: true do |t|
    t.integer "list_id",      null: false
    t.integer "product_id",   null: false
    t.string  "name_of_list"
  end

  add_index "lists_products", ["list_id"], name: "index_lists_products_on_list_id", using: :btree
  add_index "lists_products", ["product_id"], name: "index_lists_products_on_product_id", using: :btree

  create_table "products", force: true do |t|
    t.string   "product_name"
    t.string   "brand"
    t.string   "category"
    t.string   "sub_category"
    t.integer  "product_weight"
    t.integer  "product_calories"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.string   "review"
    t.integer  "user_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["user_id", "product_id"], name: "index_reviews_on_user_id_and_product_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "salt"
    t.string   "fish"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "expires_at"
  end

end
