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

ActiveRecord::Schema.define(:version => 20131206081546) do

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.text     "logo"
    t.string   "address"
    t.string   "city"
    t.string   "state_code"
    t.string   "zip"
    t.text     "jobs_url"
    t.text     "description"
    t.text     "website"
    t.string   "phone"
    t.string   "industry"
    t.string   "size"
    t.boolean  "is_active"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "jobs", :force => true do |t|
    t.integer  "company_id"
    t.string   "title"
    t.text     "body_desktop"
    t.text     "body_mobile"
    t.boolean  "is_active"
    t.text     "apply_url"
    t.string   "city"
    t.string   "state_code"
    t.boolean  "is_full_time"
    t.boolean  "is_internship"
    t.string   "degree_min"
    t.string   "exp_min"
    t.string   "exp_max"
    t.string   "salary_min"
    t.string   "salary_max"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "jobs", ["company_id"], :name => "index_jobs_on_company_id"

  create_table "saved_jobs", :force => true do |t|
    t.integer  "user_id"
    t.integer  "job_id"
    t.boolean  "is_active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

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
