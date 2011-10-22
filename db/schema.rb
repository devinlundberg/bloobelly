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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111022131306) do

  create_table "authentications", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.string   "provider",   :null => false
    t.string   "uid",        :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "food_items", :force => true do |t|
    t.integer  "food_id"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "shopping_trip_id"
  end

  create_table "foods", :force => true do |t|
    t.string   "name"
    t.string   "measure"
    t.string   "water_usage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shopping_trips", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "total"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
