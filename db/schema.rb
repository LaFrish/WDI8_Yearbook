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

ActiveRecord::Schema.define(version: 20160418231512) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "codeys", force: :cascade do |t|
    t.string  "name"
    t.string  "award"
    t.integer "student_id"
  end

  add_index "codeys", ["student_id"], name: "index_codeys_on_student_id", using: :btree

  create_table "instructors", force: :cascade do |t|
    t.string  "name"
    t.string  "img_url"
    t.string  "squad_name"
    t.integer "squad_id"
    t.integer "codey_id"
  end

  add_index "instructors", ["codey_id"], name: "index_instructors_on_codey_id", using: :btree
  add_index "instructors", ["squad_id"], name: "index_instructors_on_squad_id", using: :btree

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
    t.string  "codey_id"
    t.string  "q1"
    t.string  "q2"
    t.string  "q3"
    t.string  "q4"
    t.string  "fb"
    t.string  "linkedin"
    t.string  "email"
  end

  add_index "students", ["instructor_id"], name: "index_students_on_instructor_id", using: :btree
  add_index "students", ["squad_id"], name: "index_students_on_squad_id", using: :btree

end
