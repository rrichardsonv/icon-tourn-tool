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

ActiveRecord::Schema.define(version: 20170313163526) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conventions", force: :cascade do |t|
    t.string   "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "logo_url"
    t.string   "banner_url"
    t.string   "stream_link"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "organizers", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "participants", force: :cascade do |t|
    t.string   "tag"
    t.integer  "pin"
    t.integer  "wins"
    t.integer  "losses"
    t.float    "skill"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "signups", force: :cascade do |t|
    t.integer  "tournament_id"
    t.integer  "participant_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "tournaments", force: :cascade do |t|
    t.integer  "convention_id"
    t.integer  "entry_size"
    t.datetime "start_time"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "challonge_name"
    t.index ["challonge_name"], name: "index_tournaments_on_challonge_name", using: :btree
  end

end
