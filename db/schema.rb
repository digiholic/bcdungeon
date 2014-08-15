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

ActiveRecord::Schema.define(:version => 20140815213125) do

  create_table "attacks", :force => true do |t|
    t.string   "name"
    t.integer  "range_start"
    t.integer  "range_end"
    t.integer  "power"
    t.integer  "priority"
    t.string   "ability"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "monster_id"
    t.integer  "chance"
  end

  create_table "dungeons", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "players"
    t.integer  "gold"
    t.integer  "floors_ids"
    t.string   "epilogue"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "floor_monsters", :force => true do |t|
    t.integer  "floor_id"
    t.integer  "monster_id"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "floors", :force => true do |t|
    t.string   "name"
    t.string   "objective"
    t.integer  "size"
    t.integer  "monsters_id"
    t.integer  "start_position"
    t.boolean  "decision"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "dungeon_id"
  end

  create_table "junctions", :force => true do |t|
    t.integer  "floor_id"
    t.integer  "destination_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "monsters", :force => true do |t|
    t.string   "name"
    t.string   "ability"
    t.integer  "life"
    t.integer  "attacks_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "floor_id"
    t.string   "description"
    t.string   "image_path"
  end

end
