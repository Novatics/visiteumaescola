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

ActiveRecord::Schema.define(version: 20160621034110) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "school_availabilities", force: :cascade do |t|
    t.string   "day"
    t.string   "shift"
    t.integer  "school"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "school_profiles", force: :cascade do |t|
    t.string   "needs"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "school_profiles", ["user_id"], name: "index_school_profiles_on_user_id", using: :btree

  create_table "schools", force: :cascade do |t|
    t.string   "name",                                         null: false
    t.string   "email",                                        null: false
    t.string   "abbreviation"
    t.string   "phone",                                        null: false
    t.string   "state",                                        null: false
    t.string   "city",                                         null: false
    t.string   "neighbourhood",                                null: false
    t.string   "address",                                      null: false
    t.string   "number",                                       null: false
    t.string   "zipcode",                                      null: false
    t.boolean  "profile_nursery"
    t.boolean  "profile_daycare"
    t.boolean  "profile_kindergarten"
    t.boolean  "profile_elementary"
    t.boolean  "profile_college"
    t.boolean  "profile_technician"
    t.boolean  "profile_language"
    t.boolean  "profile_sport"
    t.boolean  "profile_art"
    t.boolean  "profile_kid"
    t.boolean  "profile_teenager"
    t.boolean  "profile_adult"
    t.boolean  "profile_elderly"
    t.boolean  "profile_deaf"
    t.boolean  "profile_disable"
    t.boolean  "profile_physical_disable"
    t.boolean  "profile_blind"
    t.boolean  "profile_teacher"
    t.boolean  "profile_employee"
    t.boolean  "profile_family"
    t.boolean  "profile_baby"
    t.string   "contact_name"
    t.string   "contact_email"
    t.string   "contact_phone"
    t.string   "contact_position"
    t.string   "contact_name_responsible"
    t.string   "contact_email_responsible"
    t.string   "contact_position_responsible"
    t.string   "contact_phone_responsible"
    t.boolean  "need_sport",                   default: false
    t.boolean  "need_culture",                 default: false
    t.boolean  "need_monitoring",              default: false
    t.boolean  "need_repairs",                 default: false
    t.boolean  "need_courses",                 default: false
    t.boolean  "need_health",                  default: false
    t.boolean  "need_psycho",                  default: false
    t.boolean  "need_donations",               default: false
    t.boolean  "need_others",                  default: false
    t.string   "need_detail"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "phone"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree

  create_table "volunteer_availabilities", force: :cascade do |t|
    t.string   "day"
    t.string   "shift"
    t.integer  "volunteer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "volunteer_profiles", force: :cascade do |t|
    t.string   "skills"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "volunteer_profiles", ["user_id"], name: "index_volunteer_profiles_on_user_id", using: :btree

  create_table "volunteers", force: :cascade do |t|
    t.string   "name",                                        null: false
    t.string   "email",                                       null: false
    t.string   "cellphone",                                   null: false
    t.string   "phone"
    t.string   "state"
    t.string   "city",                                        null: false
    t.string   "neighbourhood"
    t.string   "address"
    t.string   "number"
    t.string   "zipcode",                                     null: false
    t.boolean  "skill_sport",                 default: false
    t.boolean  "skill_culture",               default: false
    t.boolean  "skill_monitoring",            default: false
    t.boolean  "skill_repairs",               default: false
    t.boolean  "skill_courses",               default: false
    t.boolean  "skill_health",                default: false
    t.boolean  "skill_psycho",                default: false
    t.boolean  "skill_donations",             default: false
    t.boolean  "skill_others",                default: false
    t.string   "skill_detail"
    t.boolean  "preference_kid",              default: false
    t.boolean  "preference_teenager",         default: false
    t.boolean  "preference_adult",            default: false
    t.boolean  "preference_elderly",          default: false
    t.boolean  "preference_deaf",             default: false
    t.boolean  "preference_blind",            default: false
    t.boolean  "preference_disable",          default: false
    t.boolean  "preference_physical_disable", default: false
    t.boolean  "preference_teacher",          default: false
    t.boolean  "preference_employee",         default: false
    t.boolean  "preference_family",           default: false
    t.boolean  "preference_baby",             default: false
    t.integer  "points"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  add_foreign_key "school_profiles", "users"
  add_foreign_key "users", "roles"
  add_foreign_key "volunteer_profiles", "users"
end
