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

ActiveRecord::Schema.define(:version => 20121012005829) do

  create_table "crowdblog_assets", :force => true do |t|
    t.integer  "post_id"
    t.string   "attachment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "crowdblog_posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "permalink"
    t.datetime "published_at"
    t.integer  "author_id"
    t.string   "state"
    t.integer  "publisher_id"
    t.boolean  "ready_for_review"
    t.datetime "marked_for_review_at"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "fundraiser_contributions", :force => true do |t|
    t.string   "email"
    t.string   "reference"
    t.text     "request_params"
    t.integer  "amount"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "fundraiser_pledges", :force => true do |t|
    t.integer  "user_id"
    t.integer  "reward_id"
    t.integer  "pledge_amount"
    t.string   "name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "state"
    t.string   "city"
    t.string   "zip_code"
    t.string   "phone"
    t.string   "country"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "fundraiser_rewards", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "minimum_pledge"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "fundraiser_settings", :force => true do |t|
    t.string "var"
    t.text   "value"
  end

  add_index "fundraiser_settings", ["var"], :name => "index_fundraiser_settings_on_var"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
