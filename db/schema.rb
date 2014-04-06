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

ActiveRecord::Schema.define(version: 20140406022302) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "shows", force: true do |t|
    t.string  "title"
    t.text    "overview"
    t.integer "runtime"
    t.string  "air_day_utc"
    t.string  "air_time_utc"
    t.string  "imdb_id"
    t.string  "poster"
    t.integer "tvdb_id"
  end

  add_index "shows", ["tvdb_id"], name: "index_shows_on_tvdb_id", unique: true, using: :btree

  create_table "subscriptions", force: true do |t|
    t.integer "user_id"
    t.integer "show_id"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
