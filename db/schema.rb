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

ActiveRecord::Schema.define(version: 20150225205645) do

  create_table "domain_setups", force: :cascade do |t|
    t.text     "name"
    t.text     "product_url"
    t.integer  "last_read_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "product_comments", force: :cascade do |t|
    t.integer  "grade"
    t.text     "text"
    t.integer  "user_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "product_comments", ["product_id"], name: "index_product_comments_on_product_id"
  add_index "product_comments", ["user_id"], name: "index_product_comments_on_user_id"

  create_table "products", force: :cascade do |t|
    t.integer  "domain_setup_id"
    t.integer  "product_id"
    t.text     "product_name"
    t.text     "ariane"
    t.boolean  "isActive"
    t.boolean  "isAvailable"
    t.boolean  "isBackOrder"
    t.text     "original_description"
    t.float    "price"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "products", ["domain_setup_id"], name: "index_products_on_domain_setup_id"

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "xpaths", force: :cascade do |t|
    t.integer  "domain_setup_id"
    t.text     "path"
    t.string   "column_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "xpaths", ["domain_setup_id"], name: "index_xpaths_on_domain_setup_id"

end
