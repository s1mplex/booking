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

ActiveRecord::Schema.define(version: 20140424105520) do


  create_table "cinemas", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movie_show_reservations", force: true do |t|
    t.integer  "movie_show_id"
    t.string   "booker"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "cover_url"
    t.integer  "duration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organiser_data", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "nip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.string   "booker"
    t.integer  "user_id"
    t.integer  "show_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "screens", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cinema_id"
  end

  create_table "seats", force: true do |t|
    t.integer  "screen_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "show_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cinema_id"
  end

  create_table "shows", force: true do |t|
    t.integer  "movie_id"
    t.datetime "date"
    t.integer  "screen_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "show_type_id"
  end

  create_table "ticket_types", force: true do |t|
    t.string   "type"
    t.integer  "price_in_eurocents"
    t.integer  "show_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tickets", force: true do |t|
    t.integer  "reservation_id"
    t.integer  "seat_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ticket_type"
    t.integer  "ticket_type_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "organiser_data_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
