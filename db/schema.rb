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

ActiveRecord::Schema.define(version: 20170213025617) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "caregivers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "contact"
    t.string   "email"
    t.string   "password_digest"
    t.string   "gender"
    t.string   "certification"
    t.integer  "yearsofexperience"
    t.text     "experiencedescription"
    t.string   "photo"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "conditions", force: :cascade do |t|
    t.string   "name"
    t.string   "sconditions_type"
    t.integer  "sconditions_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["sconditions_type", "sconditions_id"], name: "index_conditions_on_sconditions_type_and_sconditions_id", using: :btree
  end

  create_table "fammembers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "contact"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "frequencies", force: :cascade do |t|
    t.string   "name"
    t.string   "occurences_type"
    t.integer  "occurences_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["occurences_type", "occurences_id"], name: "index_frequencies_on_occurences_type_and_occurences_id", using: :btree
  end

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.string   "sglangs_type"
    t.integer  "sglangs_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["sglangs_type", "sglangs_id"], name: "index_languages_on_sglangs_type_and_sglangs_id", using: :btree
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "geographies_type"
    t.integer  "geographies_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["geographies_type", "geographies_id"], name: "index_locations_on_geographies_type_and_geographies_id", using: :btree
  end

  create_table "patients", force: :cascade do |t|
    t.integer  "fammember_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "gender"
    t.text     "condition_description"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["fammember_id"], name: "index_patients_on_fammember_id", using: :btree
  end

  create_table "transactions", force: :cascade do |t|
    t.integer  "fammember_id"
    t.integer  "caregiver_id"
    t.integer  "patient_id"
    t.boolean  "pending",      default: false
    t.boolean  "approved",     default: false
    t.boolean  "cancelled",    default: false
    t.boolean  "concluded",    default: false
    t.date     "start_date"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["caregiver_id"], name: "index_transactions_on_caregiver_id", using: :btree
    t.index ["fammember_id"], name: "index_transactions_on_fammember_id", using: :btree
    t.index ["patient_id"], name: "index_transactions_on_patient_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "usertypes_type"
    t.integer  "usertypes_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["usertypes_type", "usertypes_id"], name: "index_users_on_usertypes_type_and_usertypes_id", using: :btree
  end

  add_foreign_key "patients", "fammembers"
  add_foreign_key "transactions", "caregivers"
  add_foreign_key "transactions", "fammembers"
  add_foreign_key "transactions", "patients"
end
