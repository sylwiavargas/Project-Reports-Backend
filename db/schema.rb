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

ActiveRecord::Schema.define(version: 2019_06_09_201606) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ngos", force: :cascade do |t|
    t.string "name_ngo"
    t.string "photo_url_ngo"
    t.string "logo_url_ngo"
    t.string "description_ngo"
    t.string "challenge_ngo"
    t.string "mentor_one_name"
    t.string "mentor_one_bio"
    t.string "mentor_two_ngo"
    t.string "mentor_two_bio"
    t.string "ngo_website_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "person_one_name"
    t.string "person_two_name"
    t.string "person_three_name"
    t.string "group_photo_url"
    t.string "person_one_photo_url"
    t.string "person_two_photo_url"
    t.string "person_three_photo_url"
    t.string "person_one_bio"
    t.string "person_two_bio"
    t.string "person_three_bio"
    t.string "about_the_team"
    t.string "how_work"
    t.string "about_problem"
    t.string "who_affected"
    t.string "target_users"
    t.string "about_solution_questions"
    t.string "paragraph_one"
    t.string "paragraph_two"
    t.string "paragraph_three"
    t.string "impact_indicators"
    t.string "implementation_plan"
    t.string "feedback"
    t.string "results"
    t.string "lessons_learned"
    t.string "source_one"
    t.string "source_two"
    t.string "source_three"
    t.string "source_four"
    t.string "source_five"
    t.string "project_photo_url_one"
    t.string "project_photo_url_two"
    t.string "project_photo_url_three"
    t.bigint "user_id"
    t.bigint "ngo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ngo_id"], name: "index_projects_on_ngo_id"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "projects", "ngos"
  add_foreign_key "projects", "users"
end
