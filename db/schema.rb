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

ActiveRecord::Schema.define(version: 20160420221225) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "codeys", force: :cascade do |t|
    t.string  "name"
    t.string  "award"
    t.integer "student_id"
  end

  add_index "codeys", ["student_id"], name: "index_codeys_on_student_id", using: :btree

  create_table "comments", force: :cascade do |t|
  end

  create_table "instructors", force: :cascade do |t|
    t.string  "name"
    t.string  "img_url"
    t.string  "squad_name"
    t.integer "squad_id"
    t.integer "codey_id"
    t.string  "quote"
    t.integer "teaching"
    t.string  "memory"
    t.string  "favlang"
    t.string  "wisewords"
  end

  add_index "instructors", ["codey_id"], name: "index_instructors_on_codey_id", using: :btree
  add_index "instructors", ["squad_id"], name: "index_instructors_on_squad_id", using: :btree

  create_table "negatives", force: :cascade do |t|
    t.integer "photo_id"
    t.integer "student_id"
    t.integer "instructor_id"
  end

  add_index "negatives", ["instructor_id"], name: "index_negatives_on_instructor_id", using: :btree
  add_index "negatives", ["photo_id"], name: "index_negatives_on_photo_id", using: :btree
  add_index "negatives", ["student_id"], name: "index_negatives_on_student_id", using: :btree

  create_table "photos", force: :cascade do |t|
    t.string "url"
  end

  create_table "students", force: :cascade do |t|
    t.string  "name"
    t.string  "img_url"
    t.string  "github_url"
    t.string  "portfolio_url"
    t.string  "project1_url"
    t.string  "project2_url"
    t.string  "project3_url"
    t.string  "project4_url"
    t.string  "quote"
    t.integer "instructor_id"
    t.integer "squad_id"
    t.integer "codey_id"
    t.string  "q1"
    t.string  "q2"
    t.string  "q3"
    t.string  "q4"
    t.string  "fb"
    t.string  "linkedin"
    t.string  "email"
  end

  add_index "students", ["codey_id"], name: "index_students_on_codey_id", using: :btree
  add_index "students", ["instructor_id"], name: "index_students_on_instructor_id", using: :btree
  add_index "students", ["squad_id"], name: "index_students_on_squad_id", using: :btree

  create_table "users", force: :cascade do |t|
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "negatives", "instructors"
  add_foreign_key "negatives", "photos"
  add_foreign_key "negatives", "students"
end
