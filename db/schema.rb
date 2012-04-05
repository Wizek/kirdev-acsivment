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

ActiveRecord::Schema.define(:version => 20120405161852) do

  create_table "achievements", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "suspended"
    t.integer  "acceptance"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "status"
    t.integer  "creator_id"
    t.integer  "supervisor_id"
    t.string   "badge_file_name"
    t.string   "badge_content_type"
    t.integer  "badge_file_size"
    t.datetime "badge_updated_at"
  end

  add_index "achievements", ["creator_id"], :name => "index_achievements_on_creator_id"
  add_index "achievements", ["supervisor_id"], :name => "index_achievements_on_supervisor_id"

  create_table "achievements_tags", :force => true do |t|
    t.integer "achievement_id"
    t.integer "tag_id"
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.integer  "tag_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "role"
  end

end
