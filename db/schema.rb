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

ActiveRecord::Schema.define(version: 20161010155008) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gifts", force: :cascade do |t|
    t.string   "giftname"
    t.string   "heading"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "oid"
  end

  create_table "matches", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "score"
    t.string   "projecttype"
    t.string   "milestones"
    t.date     "tfrom"
    t.date     "tto"
    t.integer  "amount"
    t.integer  "equipment"
    t.integer  "staff"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "profileid"
  end

  create_table "organisations", force: :cascade do |t|
    t.string   "oname"
    t.string   "olocation"
    t.string   "oimpactfocus"
    t.string   "oprojecttype"
    t.string   "omilestones"
    t.date     "otfrom"
    t.date     "otto"
    t.integer  "oamount"
    t.integer  "oequipment"
    t.integer  "ostaff"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "impactfocus"
    t.string   "projecttype"
    t.string   "projectname"
    t.string   "milestones"
    t.date     "tfrom"
    t.date     "tto"
    t.string   "resources"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string   "name"
    t.string   "heading"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "oid"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "role"
    t.boolean  "is_volunteer"
  end

  create_table "volunteers", force: :cascade do |t|
    t.string   "name"
    t.string   "time"
    t.string   "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "oid"
  end

end
