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

ActiveRecord::Schema.define(version: 20171002192102) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id", using: :btree
  end

  create_table "parties", force: :cascade do |t|
    t.string   "name"
    t.integer  "size"
    t.time     "checked_in"
    t.string   "est_wait"
    t.string   "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_parties_on_user_id", using: :btree
  end

  create_table "tables", force: :cascade do |t|
    t.integer  "max_seat"
    t.integer  "min_seat"
    t.integer  "parties_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["parties_id"], name: "index_tables_on_parties_id", using: :btree
    t.index ["user_id"], name: "index_tables_on_user_id", using: :btree
  end

  create_table "tables_activities", force: :cascade do |t|
    t.integer  "table_id"
    t.time     "time_sat"
    t.time     "time_up"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "party_id"
    t.index ["party_id"], name: "index_tables_activities_on_party_id", using: :btree
    t.index ["table_id"], name: "index_tables_activities_on_table_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["token"], name: "index_users_on_token", unique: true, using: :btree
  end

  add_foreign_key "examples", "users"
  add_foreign_key "parties", "users"
  add_foreign_key "tables", "parties", column: "parties_id"
  add_foreign_key "tables", "users"
  add_foreign_key "tables_activities", "parties"
  add_foreign_key "tables_activities", "tables"
end
