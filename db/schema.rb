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

ActiveRecord::Schema.define(version: 20170607163219) do

  create_table "collars", force: :cascade do |t|
    t.string   "collar_name"
    t.string   "collar_image_url"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string   "color_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cuffs", force: :cascade do |t|
    t.string   "cuff_name"
    t.string   "cuff_image_url"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "customer_measurements", force: :cascade do |t|
    t.integer  "customer_id"
    t.float    "neck"
    t.float    "chest"
    t.float    "stomach"
    t.float    "seat"
    t.float    "shirt_length"
    t.float    "shoulder_width"
    t.float    "right_sleeve"
    t.float    "left_sleeve"
    t.float    "right_bicep"
    t.string   "left_bicep"
    t.float    "right_cuff"
    t.float    "left_cuff"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "customers", force: :cascade do |t|
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
    t.string   "first_name"
    t.string   "last_name"
    t.string   "number"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "fabric_colors", force: :cascade do |t|
    t.integer  "fabric_id"
    t.integer  "color_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fabrics", force: :cascade do |t|
    t.string   "fabric_code"
    t.string   "fabric_desciption"
    t.string   "fabric_image_url"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.integer  "customer_id"
    t.string   "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "fabric_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "invoice_id"
    t.string   "payment_type"
    t.float    "amount"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "shirts", force: :cascade do |t|
    t.integer  "invoice_id"
    t.integer  "fabric_id"
    t.integer  "collar_id"
    t.integer  "cuff_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
