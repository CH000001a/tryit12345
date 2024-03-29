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

ActiveRecord::Schema.define(version: 20140420030900) do

  create_table "accessors", force: true do |t|
    t.integer  "garage_id"
    t.integer  "friend_id"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accessors", ["friend_id"], name: "index_accessors_on_friend_id"
  add_index "accessors", ["garage_id"], name: "index_accessors_on_garage_id"

  create_table "friends", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "garages", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "master_code"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
