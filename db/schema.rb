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

ActiveRecord::Schema.define(version: 20140226050433) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dibs", force: true do |t|
    t.string   "ip"
    t.datetime "valid_until"
    t.string   "status"
    t.integer  "creator_id"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "on_the_curb"
    t.string   "phone_number"
    t.string   "status"
    t.string   "ip"
    t.datetime "dibbed_until"
    t.integer  "creator_id"
    t.integer  "dibber_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_salt"
    t.string   "password_hash"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "on_the_curb"
    t.string   "phone_number"
    t.string   "status"
    t.string   "ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
