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

ActiveRecord::Schema.define(version: 20140819090739) do

  create_table "addresses", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "postal_code"
    t.integer  "user_id"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["country_id"], name: "index_addresses_on_country_id", using: :btree
  add_index "addresses", ["user_id"], name: "index_addresses_on_user_id", using: :btree

  create_table "categories", force: true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "category_products", force: true do |t|
    t.integer  "product_preview_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "category_products", ["category_id"], name: "index_category_products_on_category_id", using: :btree
  add_index "category_products", ["product_preview_id"], name: "index_category_products_on_product_preview_id", using: :btree

  create_table "comments", force: true do |t|
    t.string   "message"
    t.integer  "post_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "countries", force: true do |t|
    t.string   "name"
    t.integer  "country_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "countries", ["country_type_id"], name: "index_countries_on_country_type_id", using: :btree

  create_table "country_types", force: true do |t|
    t.string   "name"
    t.integer  "shipping_cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "general_informations", force: true do |t|
    t.string   "type"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", force: true do |t|
    t.integer  "user_id"
    t.integer  "total"
    t.string   "address"
    t.string   "city"
    t.string   "postal_code"
    t.string   "telephone"
    t.integer  "country_id"
    t.integer  "shipping_id"
    t.datetime "datetime_of_payment"
    t.string   "status_of_payment"
    t.integer  "payment_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "invoices", ["country_id"], name: "index_invoices_on_country_id", using: :btree
  add_index "invoices", ["payment_type_id"], name: "index_invoices_on_payment_type_id", using: :btree
  add_index "invoices", ["shipping_id"], name: "index_invoices_on_shipping_id", using: :btree
  add_index "invoices", ["user_id"], name: "index_invoices_on_user_id", using: :btree

  create_table "orders", force: true do |t|
    t.integer  "invoice_id"
    t.integer  "quantity"
    t.integer  "total"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["invoice_id"], name: "index_orders_on_invoice_id", using: :btree
  add_index "orders", ["product_id"], name: "index_orders_on_product_id", using: :btree

  create_table "payment_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_pictures", force: true do |t|
    t.integer  "product_id"
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_pictures", ["product_id"], name: "index_product_pictures_on_product_id", using: :btree

  create_table "product_previews", force: true do |t|
    t.string   "name"
    t.integer  "price"
    t.string   "picture"
    t.text     "decription"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.integer  "price"
    t.string   "picture"
    t.string   "status"
    t.string   "size"
    t.string   "color"
    t.integer  "quantity"
    t.integer  "general_information_id"
    t.integer  "product_preview_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["general_information_id"], name: "index_products_on_general_information_id", using: :btree
  add_index "products", ["product_preview_id"], name: "index_products_on_product_preview_id", using: :btree

  create_table "students", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.string   "room"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "sex"
    t.date     "birthdate"
    t.string   "telephone"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
