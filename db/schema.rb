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

ActiveRecord::Schema.define(version: 2019_07_23_152435) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "skills", force: :cascade do |t|
    t.string "name", limit: 128
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills_workers", id: false, force: :cascade do |t|
    t.bigint "skill_id", null: false
    t.bigint "worker_id", null: false
    t.index ["skill_id", "worker_id"], name: "index_skills_workers_on_skill_id_and_worker_id"
    t.index ["worker_id", "skill_id"], name: "index_skills_workers_on_worker_id_and_skill_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type", limit: 64
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["type"], name: "index_users_on_type"
  end

end
