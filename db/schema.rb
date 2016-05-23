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

ActiveRecord::Schema.define(version: 20160523231926) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.string   "hours"
    t.string   "supervisor"
    t.integer  "employee_id"
    t.integer  "project_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "assignments", ["employee_id"], name: "index_assignments_on_employee_id", using: :btree
  add_index "assignments", ["project_id"], name: "index_assignments_on_project_id", using: :btree

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.text     "location"
    t.integer  "number"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "dependents", force: :cascade do |t|
    t.string   "name"
    t.date     "birthdate"
    t.string   "relationship"
    t.string   "gender"
    t.string   "email"
    t.string   "phone_number"
    t.integer  "employee_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "dependents", ["employee_id"], name: "index_dependents_on_employee_id", using: :btree

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "nationality"
    t.text     "address"
    t.string   "gender"
    t.date     "birth_date"
    t.string   "phone_number"
    t.boolean  "manager_flag"
    t.date     "start_date"
    t.string   "end_date"
    t.integer  "department_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "employees", ["department_id"], name: "index_employees_on_department_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.integer  "number"
    t.text     "description"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "assignments", "employees"
  add_foreign_key "assignments", "projects"
  add_foreign_key "dependents", "employees"
  add_foreign_key "employees", "departments"
end
