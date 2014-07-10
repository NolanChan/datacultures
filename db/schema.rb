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

ActiveRecord::Schema.define(version: 20140709191128) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: true do |t|
    t.string   "uid",        null: false
    t.string   "reason",     null: false
    t.integer  "delta",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.integer  "student_id"
  end

  add_index "activities", ["deleted_at"], name: "index_activities_on_deleted_at", using: :btree
  add_index "activities", ["student_id"], name: "index_activities_on_student_id", using: :btree

  create_table "students", force: true do |t|
    t.integer  "canvas_id",    null: false
    t.string   "name",         null: false
    t.string   "short_name"
    t.integer  "sis_user_id",  null: false
    t.integer  "sis_login_id", null: false
    t.string   "primary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
