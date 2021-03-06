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

ActiveRecord::Schema.define(:version => 20140214212249) do

  create_table "categories", :force => true do |t|
    t.string   "category",   :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "categories", ["category"], :name => "index_categories_on_category"

  create_table "projects", :force => true do |t|
    t.string   "name",               :null => false
    t.string   "description",        :null => false
    t.integer  "owner_id",           :null => false
    t.integer  "goal",               :null => false
    t.datetime "end_time",           :null => false
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "category_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_index "projects", ["end_time"], :name => "index_projects_on_end_time"
  add_index "projects", ["owner_id"], :name => "index_projects_on_owner_id"

  create_table "rewards", :force => true do |t|
    t.integer  "project_id",       :null => false
    t.integer  "support_amount",   :null => false
    t.string   "supporter_reward", :null => false
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "rewards", ["project_id"], :name => "index_rewards_on_project_id"

  create_table "supports", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "reward_id",  :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "supports", ["reward_id"], :name => "index_supports_on_reward_id"
  add_index "supports", ["user_id"], :name => "index_supports_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "username",        :null => false
    t.string   "password_digest", :null => false
    t.string   "session_token",   :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "users", ["session_token"], :name => "index_users_on_session_token"
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

end
