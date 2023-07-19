# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_18_132335) do
  create_table "accesses", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "route"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cup_participants", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "cup_id", null: false
    t.bigint "participant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number_of_earned_scores", default: 0
    t.integer "number_of_lost_scores", default: 0
    t.integer "number_of_opponents_fouls", default: 0
    t.integer "number_of_made_fouls", default: 0
    t.integer "number_of_yellow_cards", default: 0
    t.integer "number_of_red_cards", default: 0
    t.index ["cup_id"], name: "index_cup_participants_on_cup_id"
    t.index ["participant_id"], name: "index_cup_participants_on_participant_id"
  end

  create_table "cups", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "winner_id"
    t.date "start_date"
    t.date "end_date"
    t.integer "field", null: false
    t.integer "number_of_players", null: false
    t.integer "state", default: 0, null: false
    t.integer "min_number_of_participants", default: 3
    t.integer "max_number_of_participants", default: 20
    t.integer "mode", default: 0
    t.index ["winner_id"], name: "index_cups_on_winner_id"
  end

  create_table "fouls", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.boolean "own_score"
    t.boolean "yellow_card"
    t.boolean "red_card"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "round_id", null: false
    t.bigint "participant_id", null: false
    t.bigint "player_id"
    t.index ["participant_id"], name: "index_fouls_on_participant_id"
    t.index ["player_id"], name: "index_fouls_on_player_id"
    t.index ["round_id"], name: "index_fouls_on_round_id"
  end

  create_table "knockout_node_matches", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "knockout_node_id", null: false
    t.bigint "match_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["knockout_node_id"], name: "index_knockout_node_matches_on_knockout_node_id"
    t.index ["match_id"], name: "index_knockout_node_matches_on_match_id"
  end

  create_table "knockout_nodes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "level"
    t.integer "number"
    t.bigint "knockout_id", null: false
    t.bigint "winner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "parent_node_id"
    t.index ["knockout_id"], name: "index_knockout_nodes_on_knockout_id"
    t.index ["parent_node_id"], name: "index_knockout_nodes_on_parent_node_id"
    t.index ["winner_id"], name: "index_knockout_nodes_on_winner_id"
  end

  create_table "knockout_participants", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "knockout_id", null: false
    t.bigint "participant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number_of_earned_scores", default: 0
    t.integer "number_of_lost_scores", default: 0
    t.integer "number_of_opponents_fouls", default: 0
    t.integer "number_of_made_fouls", default: 0
    t.integer "number_of_yellow_cards", default: 0
    t.integer "number_of_red_cards", default: 0
    t.index ["knockout_id"], name: "index_knockout_participants_on_knockout_id"
    t.index ["participant_id"], name: "index_knockout_participants_on_participant_id"
  end

  create_table "knockouts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.boolean "is_round_trip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cup_id", null: false
    t.bigint "winner_id"
    t.date "start_date"
    t.date "end_date"
    t.text "first_matches"
    t.boolean "third_place_match", default: false
    t.boolean "away_goal", default: false
    t.integer "state", default: 0, null: false
    t.index ["cup_id"], name: "index_knockouts_on_cup_id"
    t.index ["winner_id"], name: "index_knockouts_on_winner_id"
  end

  create_table "league_participants", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "league_id", null: false
    t.bigint "participant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number_of_wins", default: 0, null: false
    t.integer "number_of_draws", default: 0, null: false
    t.integer "number_of_losts", default: 0, null: false
    t.integer "points", default: 0, null: false
    t.integer "number_of_earned_scores", default: 0
    t.integer "number_of_lost_scores", default: 0
    t.integer "number_of_opponents_fouls", default: 0
    t.integer "number_of_made_fouls", default: 0
    t.integer "number_of_yellow_cards", default: 0
    t.integer "number_of_red_cards", default: 0
    t.index ["league_id"], name: "index_league_participants_on_league_id"
    t.index ["participant_id"], name: "index_league_participants_on_participant_id"
  end

  create_table "leagues", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "points_for_win"
    t.integer "points_for_draw"
    t.integer "points_for_lost"
    t.boolean "is_round_trip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cup_id", null: false
    t.bigint "winner_id"
    t.date "start_date"
    t.date "end_date"
    t.text "ranking"
    t.integer "state", default: 0, null: false
    t.text "win_order", null: false
    t.integer "current_weak"
    t.index ["cup_id"], name: "index_leagues_on_cup_id"
    t.index ["winner_id"], name: "index_leagues_on_winner_id"
  end

  create_table "match_participants", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "match_id", null: false
    t.bigint "participant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number_of_scores", default: 0, null: false
    t.index ["match_id"], name: "index_match_participants_on_match_id"
    t.index ["participant_id"], name: "index_match_participants_on_participant_id"
  end

  create_table "matches", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "home_team_id"
    t.bigint "league_id"
    t.bigint "knockout_id"
    t.bigint "winner_id"
    t.integer "state", default: 0, null: false
    t.integer "league_weak"
    t.index ["home_team_id"], name: "index_matches_on_home_team_id"
    t.index ["knockout_id"], name: "index_matches_on_knockout_id"
    t.index ["league_id"], name: "index_matches_on_league_id"
    t.index ["winner_id"], name: "index_matches_on_winner_id"
  end

  create_table "participants", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_participants", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "player_id", null: false
    t.bigint "participant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number"
    t.index ["participant_id"], name: "index_player_participants_on_participant_id"
    t.index ["player_id"], name: "index_player_participants_on_player_id"
  end

  create_table "players", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nickname"
    t.date "date_of_birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "username", null: false
  end

  create_table "role_accesses", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "role_id", null: false
    t.bigint "access_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["access_id"], name: "index_role_accesses_on_access_id"
    t.index ["role_id"], name: "index_role_accesses_on_role_id"
  end

  create_table "roles", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rounds", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "match_id", null: false
    t.bigint "winner_id"
    t.integer "state", default: 0, null: false
    t.index ["match_id"], name: "index_rounds_on_match_id"
    t.index ["winner_id"], name: "index_rounds_on_winner_id"
  end

  create_table "scores", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.boolean "own_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "round_id", null: false
    t.bigint "participant_id", null: false
    t.bigint "player_id"
    t.index ["participant_id"], name: "index_scores_on_participant_id"
    t.index ["player_id"], name: "index_scores_on_player_id"
    t.index ["round_id"], name: "index_scores_on_round_id"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.integer "gender"
    t.date "date_of_birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "role_id", null: false
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "cup_participants", "cups"
  add_foreign_key "cup_participants", "participants"
  add_foreign_key "cups", "participants", column: "winner_id"
  add_foreign_key "fouls", "participants"
  add_foreign_key "fouls", "players"
  add_foreign_key "fouls", "rounds"
  add_foreign_key "knockout_node_matches", "knockout_nodes"
  add_foreign_key "knockout_node_matches", "matches"
  add_foreign_key "knockout_nodes", "knockout_nodes", column: "parent_node_id"
  add_foreign_key "knockout_nodes", "knockouts"
  add_foreign_key "knockout_nodes", "participants", column: "winner_id"
  add_foreign_key "knockout_participants", "knockouts"
  add_foreign_key "knockout_participants", "participants"
  add_foreign_key "knockouts", "cups"
  add_foreign_key "knockouts", "participants", column: "winner_id"
  add_foreign_key "league_participants", "leagues"
  add_foreign_key "league_participants", "participants"
  add_foreign_key "leagues", "cups"
  add_foreign_key "leagues", "participants", column: "winner_id"
  add_foreign_key "match_participants", "matches"
  add_foreign_key "match_participants", "participants"
  add_foreign_key "matches", "knockouts"
  add_foreign_key "matches", "leagues"
  add_foreign_key "matches", "participants", column: "home_team_id"
  add_foreign_key "matches", "participants", column: "winner_id"
  add_foreign_key "player_participants", "participants"
  add_foreign_key "player_participants", "players"
  add_foreign_key "role_accesses", "accesses"
  add_foreign_key "role_accesses", "roles"
  add_foreign_key "rounds", "matches"
  add_foreign_key "rounds", "participants", column: "winner_id"
  add_foreign_key "scores", "participants"
  add_foreign_key "scores", "players"
  add_foreign_key "scores", "rounds"
  add_foreign_key "users", "roles"
end
