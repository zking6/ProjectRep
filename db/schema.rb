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

ActiveRecord::Schema.define(version: 20171129172554) do

  create_table "barbarians", force: :cascade do |t|
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.string "armorclass"
    t.integer "gold"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bards", force: :cascade do |t|
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.string "armorclass"
    t.integer "gold"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.text "background"
    t.string "race"
    t.string "classes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clerics", force: :cascade do |t|
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.string "armorclass"
    t.integer "gold"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "druids", force: :cascade do |t|
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.string "armorclass"
    t.integer "gold"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fighters", force: :cascade do |t|
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.string "armorclass"
    t.integer "gold"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monks", force: :cascade do |t|
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.string "armorclass"
    t.integer "gold"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paladins", force: :cascade do |t|
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.string "armorclass"
    t.integer "gold"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rangers", force: :cascade do |t|
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.string "armorclass"
    t.integer "gold"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rogues", force: :cascade do |t|
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.string "armorclass"
    t.integer "gold"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sorcerers", force: :cascade do |t|
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.string "armorclass"
    t.integer "gold"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "warlocks", force: :cascade do |t|
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.string "armorclass"
    t.integer "gold"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
