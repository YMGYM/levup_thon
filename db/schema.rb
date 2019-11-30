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

ActiveRecord::Schema.define(version: 2019_11_30_182706) do

  create_table "foods", force: :cascade do |t|
    t.string "title"
    t.text "caption"
    t.text "imgsrc"
    t.text "href"
    t.string "avatars"
    t.integer "foodtype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "food_id"
    t.string "write_date"
    t.string "content"
    t.string "pet_kind"
    t.string "pet_size"
    t.string "pet_age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_id"], name: "index_reviews_on_food_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.integer "user_id"
    t.string "pet_name"
    t.string "pet_size"
    t.string "feed_budget"
    t.boolean "canned_feed"
    t.boolean "dry_feed"
    t.boolean "chewing_gum"
    t.boolean "freeze_dried_feed"
    t.boolean "freeze_dried_snacks"
    t.boolean "tartar_removal_snack"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_surveys_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
