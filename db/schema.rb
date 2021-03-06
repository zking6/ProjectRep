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

ActiveRecord::Schema.define(version: 20171213054031) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.text "background"
    t.string "race"
    t.string "classes"
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
    t.integer "hitpoints"
    t.integer "strengthmodifier"
    t.integer "dexteritymodifier"
    t.integer "constitutionmodifier"
    t.integer "intelligencemodifier"
    t.integer "wisdommodifier"
    t.integer "charismamodifier"
    t.string "armorequipment"
    t.string "weaponequipment"
  end

  create_table "comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.integer "character_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_comments_on_character_id"
  end

end
