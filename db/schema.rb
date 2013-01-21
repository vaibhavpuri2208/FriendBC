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

ActiveRecord::Schema.define(:version => 20121205133908) do

  create_table "comments", :force => true do |t|
    t.string   "facebook_id"
    t.string   "from_name"
    t.string   "from_id"
    t.text     "message"
    t.datetime "created_time"
    t.integer  "post_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "facebook_id"
    t.string   "from_name"
    t.string   "from_id"
    t.text     "message"
    t.datetime "created_time"
    t.integer  "likes",        :default => 0
    t.integer  "user_id"
    t.string   "link"
    t.datetime "created_at",                                                                                                 :null => false
    t.datetime "updated_at",                                                                                                 :null => false
    t.string   "picture",      :default => "http://friendbc.herokuapp.com/assets/logo-e4306234a100473c9aab487c65c55863.png"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "facebook_access_token"
    t.string   "facebook_id"
  end

end
