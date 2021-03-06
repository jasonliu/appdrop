# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20080414235154) do

  create_table "apps", :force => true do |t|
    t.integer  "user_id"
    t.string   "key"
    t.integer  "port"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
  end

  add_index "apps", ["key"], :name => "index_apps_on_key"
  add_index "apps", ["user_id"], :name => "index_apps_on_user_id"

  create_table "auth_tokens", :force => true do |t|
    t.integer  "user_id"
    t.integer  "app_id"
    t.boolean  "used",       :default => false
    t.string   "token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "uploads", :force => true do |t|
    t.integer  "user_id"
    t.integer  "app_id"
    t.string   "content_type"
    t.string   "filename"
    t.integer  "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "nickname"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "last_login_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.integer  "visits_count",                            :default => 0
    t.string   "permalink"
    t.string   "token"
  end

  add_index "users", ["token"], :name => "index_users_on_token"

end
