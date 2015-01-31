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

ActiveRecord::Schema.define(version: 20150131214006) do

  create_table "alexes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "constituent_issues", force: true do |t|
    t.integer  "constitutent_id"
    t.integer  "issue_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "constituent_issues", ["constitutent_id"], name: "index_constituent_issues_on_constitutent_id"
  add_index "constituent_issues", ["issue_id"], name: "index_constituent_issues_on_issue_id"

  create_table "constituents", force: true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "street_address"
    t.integer  "zip_code"
    t.string   "district"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "create_issue_links", force: true do |t|
    t.integer  "query_issue"
    t.integer  "result_issue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_issues", force: true do |t|
    t.integer  "event_id"
    t.integer  "issue_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_issues", ["event_id"], name: "index_event_issues_on_event_id"
  add_index "event_issues", ["issue_id"], name: "index_event_issues_on_issue_id"

  create_table "events", force: true do |t|
    t.text     "description"
    t.datetime "event_time"
    t.integer  "mc_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["mc_id"], name: "index_events_on_mc_id"

  create_table "issues", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mc_interests", force: true do |t|
    t.integer  "mc_id"
    t.integer  "issue_id"
    t.datetime "entry_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mc_interests", ["issue_id"], name: "index_mc_interests_on_issue_id"
  add_index "mc_interests", ["mc_id"], name: "index_mc_interests_on_mc_id"

  create_table "mcs", force: true do |t|
    t.string   "name"
    t.string   "district"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
