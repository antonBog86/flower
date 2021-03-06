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

ActiveRecord::Schema.define(version: 20150906181749) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.integer  "parent_id",       limit: 4
    t.text     "description",     limit: 65535
    t.string   "seo_title",       limit: 255
    t.text     "seo_keywords",    limit: 65535
    t.string   "seo_description", limit: 160
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "categories", ["name"], name: "index_categories_on_name", using: :btree
  add_index "categories", ["parent_id"], name: "index_categories_on_parent_id", using: :btree

  create_table "images", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "path",        limit: 255
    t.integer  "plant_id",    limit: 4
    t.integer  "category_id", limit: 4
    t.integer  "weight",      limit: 4,   default: 0, null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "images", ["category_id"], name: "index_images_on_category_id", using: :btree
  add_index "images", ["plant_id"], name: "index_images_on_plant_id", using: :btree
  add_index "images", ["weight"], name: "index_images_on_weight", using: :btree

  create_table "ordered_plants", force: :cascade do |t|
    t.integer  "plant_id",   limit: 4,  null: false
    t.integer  "order_id",   limit: 4,  null: false
    t.float    "price",      limit: 24, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "ordered_plants", ["order_id", "plant_id"], name: "index_ordered_plants_on_order_id_and_plant_id", using: :btree
  add_index "ordered_plants", ["plant_id", "order_id"], name: "index_ordered_plants_on_plant_id_and_order_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.string   "orderer_name",    limit: 255
    t.string   "orderer_email",   limit: 255, null: false
    t.string   "orderer_comment", limit: 255
    t.integer  "state",           limit: 4
    t.string   "token",           limit: 255
    t.float    "price_summary",   limit: 24
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "orders", ["state"], name: "index_orders_on_state", using: :btree
  add_index "orders", ["token"], name: "index_orders_on_token", using: :btree

  create_table "plants", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.integer  "category_id",      limit: 4
    t.string   "science_name",     limit: 255
    t.string   "leaf_color",       limit: 255
    t.string   "blossom_color",    limit: 255
    t.date     "blossom_start"
    t.string   "blossom_duration", limit: 255
    t.text     "description",      limit: 65535
    t.float    "price",            limit: 24
    t.string   "seo_title",        limit: 255
    t.text     "seo_keywords",     limit: 65535
    t.string   "seo_description",  limit: 160
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "plants", ["category_id"], name: "index_plants_on_category_id", using: :btree
  add_index "plants", ["name"], name: "index_plants_on_name", using: :btree

end
