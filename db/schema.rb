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

ActiveRecord::Schema.define(version: 20140624211350) do

  create_table "families", force: true do |t|
    t.string   "Name"
    t.text     "Mailing_Address"
    t.string   "Gender"
    t.date     "Date_of_Birth"
    t.text     "bio"
    t.integer  "relationship_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "families", ["relationship_id"], name: "index_families_on_relationship_id"
  add_index "families", ["user_id"], name: "index_families_on_user_id"

  create_table "relationships", force: true do |t|
    t.integer  "user_id"
    t.string   "relationship_type"
    t.integer  "relative_user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["user_id"], name: "index_relationships_on_user_id"

  create_table "users", force: true do |t|
    t.string   "Name"
    t.string   "Mailing_Address"
    t.text     "Address"
    t.string   "Gender"
    t.date     "Date_of_Birth"
    t.integer  "Relationship_id"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["Relationship_id"], name: "index_users_on_Relationship_id"

end
