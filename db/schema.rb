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

ActiveRecord::Schema.define(version: 20160415195212) do

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.string   "isbn"
    t.text     "description"
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
    t.integer  "user_id"
    t.string   "picture_url", default: "http://i.imgur.com/Ibd6JdC.jpg"
  end

  create_table "imageprofiles", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "profile_image_file_name"
    t.string   "profile_image_content_type"
    t.integer  "profile_image_file_size"
    t.datetime "profile_image_updated_at"
    t.string   "wall_image_file_name"
    t.string   "wall_image_content_type"
    t.integer  "wall_image_file_size"
    t.datetime "wall_image_updated_at"
  end

  create_table "lends", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "user_id"
    t.integer  "borrower_id"
    t.date     "due"
    t.date     "check_in"
    t.date     "check_out"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "book_id"
    t.boolean  "click_like", default: true
    t.integer  "user_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "owner_id"
    t.integer  "borrower_id"
    t.boolean  "accepted",    default: false
    t.boolean  "attended_to", default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "raiting"
    t.text     "comment"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
    t.integer  "book_id"
    t.string   "user_picture_url"
    t.string   "user_name"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",                               null: false
    t.string   "encrypted_password",     default: "",                               null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,                                null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                                        null: false
    t.datetime "updated_at",                                                        null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "picture_url",            default: "http://i.imgur.com/vUmohYJ.jpg"
    t.string   "address"
    t.text     "about"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
