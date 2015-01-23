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

ActiveRecord::Schema.define(version: 20150123044813) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: true do |t|
    t.float    "tryptophan"
    t.float    "methionine_cysteine"
    t.float    "phenylalanine_tyrosine"
    t.float    "lysine"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.float    "histidine"
    t.float    "isoleucine"
    t.float    "leucine"
    t.float    "threonine"
    t.float    "valine"
    t.string   "serving_size"
    t.float    "protein"
  end

  create_table "search_suggestions", force: true do |t|
    t.string   "term"
    t.integer  "popularity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
