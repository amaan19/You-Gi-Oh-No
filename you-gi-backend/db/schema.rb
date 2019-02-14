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

ActiveRecord::Schema.define(version: 2019_02_14_104034) do

  create_table "cards", force: :cascade do |t|
    t.integer "deck_id"
    t.string "name"
    t.string "desc"
    t.integer "atk"
    t.integer "def"
    t.string "group"
    t.integer "level"
    t.string "race"
    t.string "element"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "decks", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gamestates", force: :cascade do |t|
    t.integer "game_id"
    t.integer "player1_id"
    t.integer "player2_id"
    t.integer "p1life"
    t.integer "p2life"
    t.string "p1deck"
    t.string "p2deck"
    t.string "p1hand"
    t.string "p2hand"
    t.string "inplay"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "turn"
    t.integer "p1deckid"
    t.integer "p2deckid"
    t.string "p1field"
    t.string "p2field"
  end

  create_table "user_games", force: :cascade do |t|
    t.integer "user_id"
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
