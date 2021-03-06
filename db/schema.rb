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

ActiveRecord::Schema.define(:version => 20130612195925) do

  create_table "admins", :force => true do |t|
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

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "matches", :force => true do |t|
    t.time     "start"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "homescore"
    t.integer  "awayscore"
    t.integer  "referee_id"
    t.integer  "soccerfield_id"
  end

  create_table "poule_names", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "poules", :force => true do |t|
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "team_group_id"
    t.integer  "poule_name_id"
  end

  create_table "referees", :force => true do |t|
    t.string   "name"
    t.integer  "present"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "soccerfields", :force => true do |t|
    t.string   "name"
    t.string   "fieldcode"
    t.string   "description"
    t.integer  "present"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "team_groups", :force => true do |t|
    t.string   "name"
    t.string   "namecode",   :limit => 1
    t.integer  "activated"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.integer  "present"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "phonenumber"
    t.string   "email"
    t.string   "contactname"
    t.integer  "teamnumber"
    t.integer  "team_group_id"
    t.integer  "poule_id"
  end

end
