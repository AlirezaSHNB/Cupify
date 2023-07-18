# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Role.create(name: "admin") # done

# Futsal Cup

futsal_league_cup = Cup.create(name: "League1", start_date: Date.today + 20, field: 0,
    number_of_players: 7, state: 0, min_number_of_participants: 3, max_number_of_participants: 6,
    mode: 0)

### Create league

league_for_futsal_league_cup = League.create(points_for_win: 3, points_for_draw: 1, points_for_lost: 0,
    is_round_trip: false, start_date: Date.today + 20, state: 0,
    cup: futsal_league_cup, win_order: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    current_weak: 1)

# Team Ping Pong Cup

team_ping_pong_knockout_cup = Cup.create(name: "Knockout1", start_date: Date.today - 5,
    field: 3, number_of_players: 2, state: 2, mode: 1,
    min_number_of_participants: 4, max_number_of_participants: 12)
### Players and Participants

player_1_in_ping_pong_team_A = Player.create(first_name: "Alireza", last_name: "Sharifpour",
    username: "alireza.sh", date_of_birth: Date.new(2000, 8, 17), nickname: "Jadis")
player_2_in_ping_pong_team_A = Player.create(first_name: "Taha", last_name: "Kamali",
    username: "taha.k", date_of_birth: Date.new(1999, 4, 17))
ping_pong_team_A = Participant.create(name: "AC Milan")
PlayerParticipant.create(player: player_1_in_ping_pong_team_A, participant: ping_pong_team_A,
    number: 1)
PlayerParticipant.create(player: player_2_in_ping_pong_team_A, participant: ping_pong_team_A,
    number: 2)

player_1_in_ping_pong_team_B = Player.create(first_name: "Alireza", last_name: "Eslami",
    username: "alireza.e", date_of_birth: Date.new(1998, 8, 17))
player_2_in_ping_pong_team_B = Player.create(first_name: "Mohsen", last_name: "Sadeghi",
    username: "mohsen.s", date_of_birth: Date.new(2002, 10, 27), nickname: "Mosi")
ping_pong_team_B = Participant.create(name: "Inter")
PlayerParticipant.create(player: player_1_in_ping_pong_team_B, participant: ping_pong_team_B,
    number: 1)
PlayerParticipant.create(player: player_2_in_ping_pong_team_B, participant: ping_pong_team_B,
    number: 2)

player_1_in_ping_pong_team_C = Player.create(first_name: "Mahdi", last_name: "Mahdi",
    username: "mahdi.m", date_of_birth: Date.new(1989, 2, 17))
player_2_in_ping_pong_team_C = Player.create(first_name: "Hadi", last_name: "Nazeri",
    username: "hadi.n", date_of_birth: Date.new(2001, 8, 7))
ping_pong_team_C = Participant.create(name: "Man City")
PlayerParticipant.create(player: player_1_in_ping_pong_team_C, participant: ping_pong_team_C,
    number: 1)
PlayerParticipant.create(player: player_2_in_ping_pong_team_C, participant: ping_pong_team_C,
    number: 2)

player_1_in_ping_pong_team_D = Player.create(first_name: "Alireza", last_name: "Taleghani",
    username: "alireza.t", date_of_birth: Date.new(2001, 9, 9))
player_2_in_ping_pong_team_D = Player.create(first_name: "Kazem", last_name: "Abar",
    username: "kazem.a", date_of_birth: Date.new(2001, 1, 1))
ping_pong_team_D = Participant.create(name: "Barca")
PlayerParticipant.create(player: player_1_in_ping_pong_team_D, participant: ping_pong_team_D,
    number: 1)
PlayerParticipant.create(player: player_2_in_ping_pong_team_D, participant: ping_pong_team_D,
    number: 2)

player_1_in_ping_pong_team_E = Player.create(first_name: "Omid", last_name: "Alizadeh",
    username: "omid.a", date_of_birth: Date.new(2002, 1, 17))
player_2_in_ping_pong_team_E = Player.create(first_name: "Mohammad", last_name: "Rezaie",
    username: "mohammad.r", date_of_birth: Date.new(2000, 3, 2), nickname: "Tank")
ping_pong_team_E = Participant.create(name: "Real")
PlayerParticipant.create(player: player_1_in_ping_pong_team_E, participant: ping_pong_team_E,
    number: 1)
PlayerParticipant.create(player: player_2_in_ping_pong_team_E, participant: ping_pong_team_E,
    number: 2)

player_1_in_ping_pong_team_F = Player.create(first_name: "Jamshid", last_name: "Asadi",
    username: "jamshid.a", date_of_birth: Date.new(2000, 1, 9))
player_2_in_ping_pong_team_F = Player.create(first_name: "Puya", last_name: "Karami",
    username: "puya.k", date_of_birth: Date.new(1999, 8, 17))
ping_pong_team_F = Participant.create(name: "Man united")
PlayerParticipant.create(player: player_1_in_ping_pong_team_F, participant: ping_pong_team_F,
    number: 1)
PlayerParticipant.create(player: player_2_in_ping_pong_team_F, participant: ping_pong_team_F,
    number: 2)

### Create knockout

knockout_for_team_ping_pong_knockout_cup = Knockout.create(is_round_trip: true, away_goal: false,
    third_place_match: false, start_date: Date.today - 5, state: 1, cup: team_ping_pong_knockout_cup,
    graph: {0 => 6, 1 => 6, 3 => 7, 4 => 7, 6 => 8, 2 => 8, 7 => 9, 5 => 9, 8 => 10, 9 => 10},
    graph_assignment: {0 => ping_pong_team_A.id, 1 => ping_pong_team_B.id,
        2 => ping_pong_team_C.id, 3 => ping_pong_team_D.id,
        4 => ping_pong_team_E.id, 5 => ping_pong_team_F.id,
        6 => ping_pong_team_A.id, 7 => ping_pong_team_E.id,
        8 => nil, 9 => nil, 10 => nil},
    number_of_rows: 11, number_of_columns: 7,
    matches_hash: {2=>{2=>[1,3], 5=>[5], 8=>[7,9], 11=>[11]},
        4=>{4=>[2,5], 10=>[8,11]},
        6=>{6=>[4,10]}},
    winners_hash: {1=>{1=>ping_pong_team_A.id, 3=>ping_pong_team_B.id,
        5=>ping_pong_team_C.id, 7=>ping_pong_team_D.id, 9=>ping_pong_team_E.id,
        11=>ping_pong_team_F.id},
        3=>{2=>ping_pong_team_A.id, 5=>ping_pong_team_C.id, 8=>ping_pong_team_E.id,
        11=>ping_pong_team_F.id},
        5=>{4=>-1, 10=>-1},
        7=>{6=>-1}})

### Cup Participants

CupParticipant.create(cup: team_ping_pong_knockout_cup, participant: ping_pong_team_A,
    number_of_earned_scores: 38, number_of_lost_scores: 10, number_of_opponents_fouls: 0,
    number_of_made_fouls: 0, number_of_yellow_cards: 0, number_of_red_cards: 0)
CupParticipant.create(cup: team_ping_pong_knockout_cup, participant: ping_pong_team_B,
    number_of_earned_scores: 10, number_of_lost_scores: 38, number_of_opponents_fouls: 0,
    number_of_made_fouls: 0, number_of_yellow_cards: 0, number_of_red_cards: 0)
CupParticipant.create(cup: team_ping_pong_knockout_cup, participant: ping_pong_team_C,
    number_of_earned_scores: 0, number_of_lost_scores: 0, number_of_opponents_fouls: 0,
    number_of_made_fouls: 0, number_of_yellow_cards: 0, number_of_red_cards: 0)
CupParticipant.create(cup: team_ping_pong_knockout_cup, participant: ping_pong_team_D,
    number_of_earned_scores: 10, number_of_lost_scores: 38, number_of_opponents_fouls: 0,
    number_of_made_fouls: 0, number_of_yellow_cards: 0, number_of_red_cards: 0)
CupParticipant.create(cup: team_ping_pong_knockout_cup, participant: ping_pong_team_E,
    number_of_earned_scores: 38, number_of_lost_scores: 10, number_of_opponents_fouls: 0,
    number_of_made_fouls: 0, number_of_yellow_cards: 0, number_of_red_cards: 0)
CupParticipant.create(cup: team_ping_pong_knockout_cup, participant: ping_pong_team_F,
    number_of_earned_scores: 0, number_of_lost_scores: 0, number_of_opponents_fouls: 0,
    number_of_made_fouls: 0, number_of_yellow_cards: 0, number_of_red_cards: 0)

### Knockout Participants

KnockoutParticipant.create(knockout: knockout_for_team_ping_pong_knockout_cup,
    participant: ping_pong_team_A, number_of_earned_scores: 38, number_of_lost_scores: 10,
    number_of_opponents_fouls: 0, number_of_made_fouls: 0, number_of_yellow_cards: 0,
    number_of_red_cards: 0)
KnockoutParticipant.create(knockout: knockout_for_team_ping_pong_knockout_cup,
    participant: ping_pong_team_B, number_of_earned_scores: 10, number_of_lost_scores: 38,
    number_of_opponents_fouls: 0, number_of_made_fouls: 0, number_of_yellow_cards: 0,
    number_of_red_cards: 0)
KnockoutParticipant.create(knockout: knockout_for_team_ping_pong_knockout_cup,
    participant: ping_pong_team_C, number_of_earned_scores: 0, number_of_lost_scores: 0,
    number_of_opponents_fouls: 0, number_of_made_fouls: 0, number_of_yellow_cards: 0,
    number_of_red_cards: 0)
KnockoutParticipant.create(knockout: knockout_for_team_ping_pong_knockout_cup,
    participant: ping_pong_team_D, number_of_earned_scores: 10, number_of_lost_scores: 38,
    number_of_opponents_fouls: 0, number_of_made_fouls: 0, number_of_yellow_cards: 0,
    number_of_red_cards: 0)
KnockoutParticipant.create(knockout: knockout_for_team_ping_pong_knockout_cup,
    participant: ping_pong_team_E, number_of_earned_scores: 38, number_of_lost_scores: 10,
    number_of_opponents_fouls: 0, number_of_made_fouls: 0, number_of_yellow_cards: 0,
    number_of_red_cards: 0)
KnockoutParticipant.create(knockout: knockout_for_team_ping_pong_knockout_cup,
    participant: ping_pong_team_F, number_of_earned_scores: 10, number_of_lost_scores: 38,
    number_of_opponents_fouls: 0, number_of_made_fouls: 0, number_of_yellow_cards: 0,
    number_of_red_cards: 0)

### First match between A and B is done

first_match_between_A_and_B = Match.create(start_time: DateTime.now - 5 + 3.hour,
    end_time: DateTime.now - 5 + 4.hour + 30.minute, home_team: ping_pong_team_A,
    knockout: knockout_for_team_ping_pong_knockout_cup, winner: ping_pong_team_A, state: 2,)
MatchParticipant.create(match: first_match_between_A_and_B, participant: ping_pong_team_A,
    number_of_scores: 19)
MatchParticipant.create(match: first_match_between_A_and_B, participant: ping_pong_team_B,
    number_of_scores: 3)

###### Round 1

round_1_in_first_match_between_A_and_B = Round.create(number: 1,
    match: first_match_between_A_and_B, winner: ping_pong_team_A, state: 2)
for a in 1..7 do
    Score.create(own_score: false, participant: ping_pong_team_A,
        round: round_1_in_first_match_between_A_and_B)
end

###### Round 2

round_2_in_first_match_between_A_and_B = Round.create(number: 2,
    match: first_match_between_A_and_B, winner: ping_pong_team_A, state: 2)
Score.create(own_score: false, participant: ping_pong_team_A,
    round: round_2_in_first_match_between_A_and_B) # 1 - 0
Score.create(own_score: false, participant: ping_pong_team_A,
    round: round_2_in_first_match_between_A_and_B) # 2 - 0
Score.create(own_score: false, participant: ping_pong_team_A,
    round: round_2_in_first_match_between_A_and_B) # 3 - 0
Score.create(own_score: false, participant: ping_pong_team_A,
    round: round_2_in_first_match_between_A_and_B) # 4 - 0
Score.create(own_score: false, participant: ping_pong_team_B,
    round: round_2_in_first_match_between_A_and_B) # 4 - 1
Score.create(own_score: false, participant: ping_pong_team_B,
    round: round_2_in_first_match_between_A_and_B) # 4 - 2
Score.create(own_score: false, participant: ping_pong_team_B,
    round: round_2_in_first_match_between_A_and_B) # 4 - 3
Score.create(own_score: false, participant: ping_pong_team_A,
    round: round_2_in_first_match_between_A_and_B) # 5 - 3
Score.create(own_score: false, participant: ping_pong_team_A,
    round: round_2_in_first_match_between_A_and_B) # 6 - 3
Score.create(own_score: false, participant: ping_pong_team_A,
    round: round_2_in_first_match_between_A_and_B) # 7 - 3
Score.create(own_score: false, participant: ping_pong_team_A,
    round: round_2_in_first_match_between_A_and_B) # 8 - 3
Score.create(own_score: false, participant: ping_pong_team_A,
    round: round_2_in_first_match_between_A_and_B) # 9 - 3
Score.create(own_score: false, participant: ping_pong_team_A,
    round: round_2_in_first_match_between_A_and_B) # 10 - 3
Score.create(own_score: false, participant: ping_pong_team_A,
    round: round_2_in_first_match_between_A_and_B) # 11 - 3
Score.create(own_score: false, participant: ping_pong_team_A,
    round: round_2_in_first_match_between_A_and_B) # final

### Second match between A and B is done

second_match_between_A_and_B = Match.create(start_time: DateTime.now - 4 + 3.hour,
    end_time: DateTime.now - 4 + 4.hour + 30.minute, home_team: ping_pong_team_B,
    knockout: knockout_for_team_ping_pong_knockout_cup,winner: ping_pong_team_A, state: 2)
MatchParticipant.create(match: second_match_between_A_and_B, participant: ping_pong_team_A,
    number_of_scores: 19)
MatchParticipant.create(match: second_match_between_A_and_B, participant: ping_pong_team_B,
    number_of_scores: 7)

###### Round 1

round_1_in_second_match_between_A_and_B = Round.create(number: 1,
    match: second_match_between_A_and_B, winner: ping_pong_team_A, state: 2)
for a in 1..7 do
    Score.create(own_score: false, participant: ping_pong_team_A,
        round: round_1_in_second_match_between_A_and_B)
end

###### Round 2

round_2_in_second_match_between_A_and_B = Round.create(number: 2,
    match: second_match_between_A_and_B, winner: ping_pong_team_A, state: 2)
Score.create(own_score: false, participant: ping_pong_team_A,
    round: round_2_in_second_match_between_A_and_B) # 1 - 0
Score.create(own_score: false, participant: ping_pong_team_A,
    round: round_2_in_second_match_between_A_and_B) # 2 - 0
Score.create(own_score: false, participant: ping_pong_team_A,
    round: round_2_in_second_match_between_A_and_B) # 3 - 0
Score.create(own_score: false, participant: ping_pong_team_A,
    round: round_2_in_second_match_between_A_and_B) # 4 - 0
Score.create(own_score: false, participant: ping_pong_team_B,
    round: round_2_in_second_match_between_A_and_B) # 4 - 1
Score.create(own_score: false, participant: ping_pong_team_B,
    round: round_2_in_second_match_between_A_and_B) # 4 - 2
Score.create(own_score: false, participant: ping_pong_team_B,
    round: round_2_in_second_match_between_A_and_B) # 4 - 3
Score.create(own_score: false, participant: ping_pong_team_A,
    round: round_2_in_second_match_between_A_and_B) # 5 - 3
Score.create(own_score: false, participant: ping_pong_team_A,
    round: round_2_in_second_match_between_A_and_B) # 6 - 3
Score.create(own_score: false, participant: ping_pong_team_A,
    round: round_2_in_second_match_between_A_and_B) # 7 - 3
Score.create(own_score: false, participant: ping_pong_team_A,
    round: round_2_in_second_match_between_A_and_B) # 8 - 3
Score.create(own_score: false, participant: ping_pong_team_A,
    round: round_2_in_second_match_between_A_and_B) # 9 - 3
Score.create(own_score: false, participant: ping_pong_team_A,
    round: round_2_in_second_match_between_A_and_B) # 10 - 3
Score.create(own_score: false, participant: ping_pong_team_A,
    round: round_2_in_second_match_between_A_and_B) # 11 - 3
Score.create(own_score: false, participant: ping_pong_team_B,
    round: round_2_in_second_match_between_A_and_B) # 11 - 4
Score.create(own_score: false, participant: ping_pong_team_B,
    round: round_2_in_second_match_between_A_and_B) # 11 - 5
Score.create(own_score: false, participant: ping_pong_team_B,
    round: round_2_in_second_match_between_A_and_B) # 11 - 6
Score.create(own_score: false, participant: ping_pong_team_B,
    round: round_2_in_second_match_between_A_and_B) # 11 - 7
Score.create(own_score: false, participant: ping_pong_team_A,
    round: round_2_in_second_match_between_A_and_B) # final

### First match between D and E is done

first_match_between_D_and_E = Match.create(start_time: DateTime.now - 3 + 3.hour,
    end_time: DateTime.now - 3 + 4.hour + 30.minute, home_team: ping_pong_team_D,
    knockout: knockout_for_team_ping_pong_knockout_cup, winner: ping_pong_team_E, state: 2)
MatchParticipant.create(match: first_match_between_D_and_E, participant: ping_pong_team_D,
    number_of_scores: 3)
MatchParticipant.create(match: first_match_between_D_and_E, participant: ping_pong_team_E,
    number_of_scores: 19)

###### Round 1

round_1_in_first_match_between_D_and_E = Round.create(number: 1,
    match: first_match_between_D_and_E, winner: ping_pong_team_E, state: 2)
for a in 1..7 do
    Score.create(own_score: false, participant: ping_pong_team_E,
        round: round_1_in_first_match_between_D_and_E)
end

###### Round 2

round_2_in_first_match_between_D_and_E = Round.create(number: 2,
    match: first_match_between_D_and_E, winner: ping_pong_team_E, state: 2)
Score.create(own_score: false, participant: ping_pong_team_E,
    round: round_2_in_first_match_between_D_and_E) # 1 - 0
Score.create(own_score: false, participant: ping_pong_team_E,
    round: round_2_in_first_match_between_D_and_E) # 2 - 0
Score.create(own_score: false, participant: ping_pong_team_E,
    round: round_2_in_first_match_between_D_and_E) # 3 - 0
Score.create(own_score: false, participant: ping_pong_team_E,
    round: round_2_in_first_match_between_D_and_E) # 4 - 0
Score.create(own_score: false, participant: ping_pong_team_D,
    round: round_2_in_first_match_between_D_and_E) # 4 - 1
Score.create(own_score: false, participant: ping_pong_team_D,
    round: round_2_in_first_match_between_D_and_E) # 4 - 2
Score.create(own_score: false, participant: ping_pong_team_D,
    round: round_2_in_first_match_between_D_and_E) # 4 - 3
Score.create(own_score: false, participant: ping_pong_team_E,
    round: round_2_in_first_match_between_D_and_E) # 5 - 3
Score.create(own_score: false, participant: ping_pong_team_E,
    round: round_2_in_first_match_between_D_and_E) # 6 - 3
Score.create(own_score: false, participant: ping_pong_team_E,
    round: round_2_in_first_match_between_D_and_E) # 7 - 3
Score.create(own_score: false, participant: ping_pong_team_E,
    round: round_2_in_first_match_between_D_and_E) # 8 - 3
Score.create(own_score: false, participant: ping_pong_team_E,
    round: round_2_in_first_match_between_D_and_E) # 9 - 3
Score.create(own_score: false, participant: ping_pong_team_E,
    round: round_2_in_first_match_between_D_and_E) # 10 - 3
Score.create(own_score: false, participant: ping_pong_team_E,
    round: round_2_in_first_match_between_D_and_E) # 11 - 3
Score.create(own_score: false, participant: ping_pong_team_E,
    round: round_2_in_first_match_between_D_and_E) # final

### Second match between D and E is done

second_match_between_D_and_E = Match.create(start_time: DateTime.now - 2 + 3.hour,
    end_time: DateTime.now - 2 + 4.hour + 30.minute, home_team: ping_pong_team_E,
    knockout: knockout_for_team_ping_pong_knockout_cup, winner: ping_pong_team_E, state: 2)
MatchParticipant.create(match: second_match_between_D_and_E, participant: ping_pong_team_D,
    number_of_scores: 7)
MatchParticipant.create(match: second_match_between_D_and_E, participant: ping_pong_team_E,
    number_of_scores: 19)

###### Round 1

round_1_in_second_match_between_D_and_E = Round.create(number: 1,
    match: second_match_between_D_and_E, winner: ping_pong_team_E, state: 2)
for a in 1..7 do
    Score.create(own_score: false, participant: ping_pong_team_E,
        round: round_1_in_second_match_between_D_and_E)
end

###### Round 2

round_2_in_second_match_between_D_and_E = Round.create(number: 2,
    match: second_match_between_D_and_E, winner: ping_pong_team_E, state: 2)
Score.create(own_score: false, participant: ping_pong_team_E,
    round: round_2_in_second_match_between_D_and_E) # 1 - 0
Score.create(own_score: false, participant: ping_pong_team_E,
    round: round_2_in_second_match_between_D_and_E) # 2 - 0
Score.create(own_score: false, participant: ping_pong_team_E,
    round: round_2_in_second_match_between_D_and_E) # 3 - 0
Score.create(own_score: false, participant: ping_pong_team_E,
    round: round_2_in_second_match_between_D_and_E) # 4 - 0
Score.create(own_score: false, participant: ping_pong_team_D,
    round: round_2_in_second_match_between_D_and_E) # 4 - 1
Score.create(own_score: false, participant: ping_pong_team_D,
    round: round_2_in_second_match_between_D_and_E) # 4 - 2
Score.create(own_score: false, participant: ping_pong_team_D,
    round: round_2_in_second_match_between_D_and_E) # 4 - 3
Score.create(own_score: false, participant: ping_pong_team_E,
    round: round_2_in_second_match_between_D_and_E) # 5 - 3
Score.create(own_score: false, participant: ping_pong_team_E,
    round: round_2_in_second_match_between_D_and_E) # 6 - 3
Score.create(own_score: false, participant: ping_pong_team_E,
    round: round_2_in_second_match_between_D_and_E) # 7 - 3
Score.create(own_score: false, participant: ping_pong_team_E,
    round: round_2_in_second_match_between_D_and_E) # 8 - 3
Score.create(own_score: false, participant: ping_pong_team_E,
    round: round_2_in_second_match_between_D_and_E) # 9 - 3
Score.create(own_score: false, participant: ping_pong_team_E,
    round: round_2_in_second_match_between_D_and_E) # 10 - 3
Score.create(own_score: false, participant: ping_pong_team_E,
    round: round_2_in_second_match_between_D_and_E) # 11 - 3
Score.create(own_score: false, participant: ping_pong_team_D,
    round: round_2_in_second_match_between_D_and_E) # 11 - 4
Score.create(own_score: false, participant: ping_pong_team_D,
    round: round_2_in_second_match_between_D_and_E) # 11 - 5
Score.create(own_score: false, participant: ping_pong_team_D,
    round: round_2_in_second_match_between_D_and_E) # 11 - 6
Score.create(own_score: false, participant: ping_pong_team_D,
    round: round_2_in_second_match_between_D_and_E) # 11 - 7
Score.create(own_score: false, participant: ping_pong_team_E,
    round: round_2_in_second_match_between_D_and_E) # final

### First match between A and C is ready to start

first_match_between_A_and_C = Match.create(start_time: DateTime.now + 3.hour,
    home_team: ping_pong_team_A, knockout: knockout_for_team_ping_pong_knockout_cup, state: 0)
MatchParticipant.create(match: first_match_between_A_and_C, participant: ping_pong_team_A)
MatchParticipant.create(match: first_match_between_A_and_C, participant: ping_pong_team_C)

### Second match between A and C is ready to start

second_match_between_A_and_C = Match.create(start_time: DateTime.now + 1 + 3.hour,
    home_team: ping_pong_team_C, knockout: knockout_for_team_ping_pong_knockout_cup, state: 0)
MatchParticipant.create(match: second_match_between_A_and_C, participant: ping_pong_team_A)
MatchParticipant.create(match: second_match_between_A_and_C, participant: ping_pong_team_C)

### First match between E and F is ready to start

first_match_between_E_and_F = Match.create(start_time: DateTime.now + 6.hour,
    home_team: ping_pong_team_E, knockout: knockout_for_team_ping_pong_knockout_cup, state: 0)
MatchParticipant.create(match: first_match_between_E_and_F, participant: ping_pong_team_E)
MatchParticipant.create(match: first_match_between_E_and_F, participant: ping_pong_team_F)

### Second match between E and F is ready to start

second_match_between_E_and_F = Match.create(start_time: DateTime.now + 1 + 6.hour,
    home_team: ping_pong_team_F, knockout: knockout_for_team_ping_pong_knockout_cup, state: 0)
MatchParticipant.create(match: second_match_between_E_and_F, participant: ping_pong_team_E)
MatchParticipant.create(match: second_match_between_E_and_F, participant: ping_pong_team_F)

### Knockout Node

winner_node = KnockoutNode.create(knockout: knockout_for_team_ping_pong_knockout_cup,
    level: 0, number: 0, parent_node: nil)

final_node = KnockoutNode.create(knockout: knockout_for_team_ping_pong_knockout_cup,
    level: 1, number: 0, parent_node: winner_node)

semi_final_1_node = KnockoutNode.create(knockout: knockout_for_team_ping_pong_knockout_cup,
    level: 2, number: 0, parent_node: final_node)
KnockoutNodeMatch.create(knockout_node: semi_final_1_node, match: first_match_between_A_and_C)
KnockoutNodeMatch.create(knockout_node: semi_final_1_node, match: second_match_between_A_and_C)
semi_final_2_node = KnockoutNode.create(knockout: knockout_for_team_ping_pong_knockout_cup,
    level: 2, number: 1, parent_node: final_node)
KnockoutNodeMatch.create(knockout_node: semi_final_2_node, match: first_match_between_E_and_F)
KnockoutNodeMatch.create(knockout_node: semi_final_2_node, match: second_match_between_E_and_F)

quarter_final_1_node = KnockoutNode.create(knockout: knockout_for_team_ping_pong_knockout_cup,
    level: 3, number: 0, parent_node: semi_final_1_node, winner: ping_pong_team_A)
KnockoutNodeMatch.create(knockout_node: quarter_final_1_node, match: first_match_between_A_and_B)
KnockoutNodeMatch.create(knockout_node: quarter_final_1_node, match: second_match_between_A_and_B)
quarter_final_2_node = KnockoutNode.create(knockout: knockout_for_team_ping_pong_knockout_cup,
    level: 3, number: 1, parent_node: semi_final_1_node, winner: ping_pong_team_C)

quarter_final_3_node = KnockoutNode.create(knockout: knockout_for_team_ping_pong_knockout_cup,
    level: 3, number: 2, parent_node: semi_final_2_node, winner: ping_pong_team_E)
KnockoutNodeMatch.create(knockout_node: quarter_final_3_node, match: first_match_between_D_and_E)
KnockoutNodeMatch.create(knockout_node: quarter_final_3_node, match: second_match_between_D_and_E)
quarter_final_4_node = KnockoutNode.create(knockout: knockout_for_team_ping_pong_knockout_cup,
    level: 3, number: 3, parent_node: semi_final_2_node, winner: ping_pong_team_F)

### Players and Participants

player_in_fifa23_team_A = Player.create(first_name: "Alireza", last_name: "Kazemi",
    username: "alireza.k", date_of_birth: Date.new(1999, 2, 23))
fifa23_team_A = Participant.create(name: "Everton")
PlayerParticipant.create(player: player_in_fifa23_team_A, participant: fifa23_team_A,
    number: 1)

player_in_fifa23_team_B = Player.create(first_name: "Moein", last_name: "Fadaei",
    username: "moein.f", date_of_birth: Date.new(1999, 1, 3))
fifa23_team_B = Participant.create(name: "Leeds")
PlayerParticipant.create(player: player_in_fifa23_team_B, participant: fifa23_team_B,
    number: 1)

player_in_fifa23_team_C = Player.create(first_name: "Asghar", last_name: "Yavari",
    username: "ashghar.y", date_of_birth: Date.new(1999, 10, 23))
fifa23_team_C = Participant.create(name: "Arsenal")
PlayerParticipant.create(player: player_in_fifa23_team_C, participant: fifa23_team_C,
    number: 1)

player_in_fifa23_team_D = Player.create(first_name: "Amir", last_name: "Rahnama",
    username: "amir.r", date_of_birth: Date.new(2000, 1, 1))
fifa23_team_D = Participant.create(name: "Roma")
PlayerParticipant.create(player: player_in_fifa23_team_D, participant: fifa23_team_D,
    number: 1)

player_in_fifa23_team_E = Player.create(first_name: "Mahdi", last_name: "Ghaderi",
    username: "mahdi.gh", date_of_birth: Date.new(2001, 9, 23))
fifa23_team_E = Participant.create(name: "Paris")
PlayerParticipant.create(player: player_in_fifa23_team_E, participant: fifa23_team_E,
    number: 1)

player_in_fifa23_team_F = Player.create(first_name: "Vahid", last_name: "Moradi",
    username: "vahid.m", date_of_birth: Date.new(2000, 6, 6))
fifa23_team_F = Participant.create(name: "Lyon")
PlayerParticipant.create(player: player_in_fifa23_team_F, participant: fifa23_team_F,
    number: 1)

player_in_fifa23_team_G = Player.create(first_name: "Biok", last_name: "Dashti",
    username: "biok.d", date_of_birth: Date.new(1999, 1, 13))
fifa23_team_G = Participant.create(name: "Valencia")
PlayerParticipant.create(player: player_in_fifa23_team_G, participant: fifa23_team_G,
    number: 1)

player_in_fifa23_team_H = Player.create(first_name: "Sadegh", last_name: "Kalaantari",
    username: "sadegh.k", date_of_birth: Date.new(2000, 10, 10))
fifa23_team_H = Participant.create(name: "Aston Villa")
PlayerParticipant.create(player: player_in_fifa23_team_H, participant: fifa23_team_H,
    number: 1)

# Individual FIFA23 Cup

individual_fifa23_comb_cup = Cup.create(name: "Comb1", start_date: Date.today - 50,  field: 4,
    number_of_players: 1, state: 3, min_number_of_participants: 6, mode: 2,
    max_number_of_participants: 16, winner: fifa23_team_F)

### Create league A (Groupe A)

league_A_for_individual_fifa23_comb_cup = League.create(points_for_win: 3, points_for_draw: 1,
    points_for_lost: 0, is_round_trip: false, cup: individual_fifa23_comb_cup,
    start_date: Date.today - 50, end_date: Date.today - 48, state: 2,
    ranking: [fifa23_team_A.id, fifa23_team_C.id, fifa23_team_B.id, fifa23_team_D.id],
    winner: fifa23_team_A, win_order: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9], current_weak: 3)

### League Participants for league A (Groupe A)

LeagueParticipant.create(league: league_A_for_individual_fifa23_comb_cup,
    participant: fifa23_team_A, number_of_wins: 2, number_of_draws: 1, number_of_losts: 0,
    points: 7, number_of_earned_scores: 6, number_of_lost_scores: 2,
    number_of_opponents_fouls: 0, number_of_made_fouls: 0, number_of_yellow_cards: 0,
    number_of_red_cards: 0)
LeagueParticipant.create(league: league_A_for_individual_fifa23_comb_cup,
    participant: fifa23_team_B, number_of_wins: 1, number_of_draws: 1, number_of_losts: 1,
    points: 4, number_of_earned_scores: 2, number_of_lost_scores: 3,
    number_of_opponents_fouls: 0, number_of_made_fouls: 0, number_of_yellow_cards: 0,
    number_of_red_cards: 0)
LeagueParticipant.create(league: league_A_for_individual_fifa23_comb_cup,
    participant: fifa23_team_C, number_of_wins: 1, number_of_draws: 2, number_of_losts: 0,
    points: 5, number_of_earned_scores: 4, number_of_lost_scores: 1,
    number_of_opponents_fouls: 0, number_of_made_fouls: 0, number_of_yellow_cards: 0,
    number_of_red_cards: 0)
LeagueParticipant.create(league: league_A_for_individual_fifa23_comb_cup,
    participant: fifa23_team_D, number_of_wins: 0, number_of_draws: 0, number_of_losts: 3,
    points: 0, number_of_earned_scores: 2, number_of_lost_scores: 8,
    number_of_opponents_fouls: 0, number_of_made_fouls: 0, number_of_yellow_cards: 0,
    number_of_red_cards: 0)

### Matches for league A (Groupe A)

###### Match between A and B is done

match_between_A_and_B = Match.create(start_time: DateTime.now - 50 + 3.hour,
    end_time: DateTime.now - 50 + 5.hour, league: league_A_for_individual_fifa23_comb_cup,
    winner: fifa23_team_A, state: 2, league_weak: 1)
MatchParticipant.create(match: match_between_A_and_B, participant: fifa23_team_A,
    number_of_scores: 2)
MatchParticipant.create(match: match_between_A_and_B, participant: fifa23_team_B,
    number_of_scores: 0)

######### Round and Scores

round_of_match_between_A_and_B = Round.create(number: 1, match: match_between_A_and_B,
    winner: fifa23_team_A, state: 2)
Score.create(own_score: false, participant: fifa23_team_A, player: player_in_fifa23_team_A,
    round: round_of_match_between_A_and_B)
Score.create(own_score: true, participant: fifa23_team_A, player: player_in_fifa23_team_B,
    round: round_of_match_between_A_and_B) ####### own goal

###### Match between C and D is done

match_between_C_and_D = Match.create(start_time: DateTime.now - 50 + 6.hour,
    end_time: DateTime.now - 50 + 8.hour, league: league_A_for_individual_fifa23_comb_cup,
    winner: fifa23_team_C, state: 2, league_weak: 1)
MatchParticipant.create(match: match_between_A_and_B, participant: fifa23_team_C,
    number_of_scores: 3)
MatchParticipant.create(match: match_between_A_and_B, participant: fifa23_team_D,
    number_of_scores: 0)

######### Round and Scores

round_of_match_between_C_and_D = Round.create(number: 1, match: match_between_C_and_D,
    winner: fifa23_team_C, state: 2)
Score.create(own_score: false, participant: fifa23_team_C, player: player_in_fifa23_team_C,
    round: round_of_match_between_C_and_D)
Score.create(own_score: false, participant: fifa23_team_C, player: player_in_fifa23_team_C,
    round: round_of_match_between_C_and_D)
Score.create(own_score: false, participant: fifa23_team_C, player: player_in_fifa23_team_C,
    round: round_of_match_between_C_and_D)

###### Match between A and C is done

match_between_A_and_C = Match.create(start_time: DateTime.now - 49 + 3.hour,
    end_time: DateTime.now - 49 + 5.hour, league: league_A_for_individual_fifa23_comb_cup,
    winner: nil, state: 2, league_weak: 2)
MatchParticipant.create(match: match_between_A_and_C, participant: fifa23_team_A,
    number_of_scores: 1)
MatchParticipant.create(match: match_between_A_and_C, participant: fifa23_team_C,
    number_of_scores: 1)

######### Round and Scores

round_of_match_between_A_and_C = Round.create(number: 1, match: match_between_A_and_C,
    winner: nil, state: 2)
Score.create(own_score: false, participant: fifa23_team_C, player: player_in_fifa23_team_C,
    round: round_of_match_between_A_and_C)
Score.create(own_score: false, participant: fifa23_team_A, player: player_in_fifa23_team_A,
    round: round_of_match_between_A_and_C)

###### Match between B and D is done

match_between_B_and_D = Match.create(start_time: DateTime.now - 49 + 6.hour,
    end_time: DateTime.now - 49 + 8.hour, league: league_A_for_individual_fifa23_comb_cup,
    winner: fifa23_team_B, state: 2, league_weak: 2)
MatchParticipant.create(match: match_between_B_and_D, participant: fifa23_team_B,
    number_of_scores: 2)
MatchParticipant.create(match: match_between_B_and_D, participant: fifa23_team_D,
    number_of_scores: 1)

######### Round and Scores

round_of_match_between_B_and_D = Round.create(number: 1, match: match_between_B_and_D,
    winner: fifa23_team_B, state: 2)
Score.create(own_score: false, participant: fifa23_team_B, player: player_in_fifa23_team_B,
    round: round_of_match_between_B_and_D)
Score.create(own_score: false, participant: fifa23_team_B, player: player_in_fifa23_team_B,
    round: round_of_match_between_B_and_D)
Score.create(own_score: false, participant: fifa23_team_D, player: player_in_fifa23_team_D,
    round: round_of_match_between_B_and_D)

###### Match between B and C is done

match_between_B_and_C = Match.create(start_time: DateTime.now - 48 + 3.hour,
    end_time: DateTime.now - 48 + 5.hour, league: league_A_for_individual_fifa23_comb_cup,
    winner: nil, state: 2, league_weak: 3)
MatchParticipant.create(match: match_between_B_and_C, participant: fifa23_team_B,
    number_of_scores: 0)
MatchParticipant.create(match: match_between_B_and_C, participant: fifa23_team_C,
    number_of_scores: 0)

######### Round and Scores

round_of_match_between_B_and_C = Round.create(number: 1, match: match_between_B_and_C,
    winner: nil, state: 2) # no score

###### Match between A and D is done

match_between_A_and_D = Match.create(start_time: DateTime.now - 48 + 6.hour,
    end_time: DateTime.now - 48 + 8.hour, league: league_A_for_individual_fifa23_comb_cup,
    winner: fifa23_team_A, state: 2, league_weak: 3)
MatchParticipant.create(match: match_between_A_and_D, participant: fifa23_team_A,
    number_of_scores: 3)
MatchParticipant.create(match: match_between_A_and_D, participant: fifa23_team_D,
    number_of_scores: 1)

######### Round and Scores

round_of_match_between_A_and_D = Round.create(number: 1, match: match_between_A_and_D,
    winner: fifa23_team_A, state: 2)
Score.create(own_score: false, participant: fifa23_team_A, player: player_in_fifa23_team_A,
    round: round_of_match_between_A_and_D)
Score.create(own_score: false, participant: fifa23_team_D, player: player_in_fifa23_team_D,
    round: round_of_match_between_A_and_D)
Score.create(own_score: false, participant: fifa23_team_A, player: player_in_fifa23_team_A,
    round: round_of_match_between_A_and_D)
Score.create(own_score: false, participant: fifa23_team_A, player: player_in_fifa23_team_A,
    round: round_of_match_between_A_and_D)

### Create league B (Groupe B)

league_B_for_individual_fifa23_comb_cup = League.create(points_for_win: 3, points_for_draw: 1,
    points_for_lost: 0, is_round_trip: false, cup: individual_fifa23_comb_cup,
    start_date: Date.today - 50, end_date: Date.today - 48, state: 2,
    ranking: [fifa23_team_F.id, fifa23_team_H.id, fifa23_team_G.id, fifa23_team_E.id],
    winner: fifa23_team_F, win_order: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9], current_weak: 3)

### League Participants for league B (Groupe B)

LeagueParticipant.create(league: league_B_for_individual_fifa23_comb_cup,
    participant: fifa23_team_E, number_of_wins: 0, number_of_draws: 0, number_of_losts: 3,
    points: 0, number_of_earned_scores: 2, number_of_lost_scores: 12,
    number_of_opponents_fouls: 0, number_of_made_fouls: 0, number_of_yellow_cards: 0,
    number_of_red_cards: 0)
LeagueParticipant.create(league: league_B_for_individual_fifa23_comb_cup,
    participant: fifa23_team_F, number_of_wins: 3, number_of_draws: 0, number_of_losts: 0,
    points: 9, number_of_earned_scores: 13, number_of_lost_scores: 1,
    number_of_opponents_fouls: 0, number_of_made_fouls: 0, number_of_yellow_cards: 0,
    number_of_red_cards: 0)
LeagueParticipant.create(league: league_B_for_individual_fifa23_comb_cup,\
    participant: fifa23_team_G, number_of_wins: 1, number_of_draws: 1, number_of_losts: 1,
    points: 4, number_of_earned_scores: 1, number_of_lost_scores: 3,
    number_of_opponents_fouls: 0, number_of_made_fouls: 0, number_of_yellow_cards: 0,
    number_of_red_cards: 0)
LeagueParticipant.create(league: league_B_for_individual_fifa23_comb_cup,
    participant: fifa23_team_H, number_of_wins: 1, number_of_draws: 1, number_of_losts: 1,
    points: 4, number_of_earned_scores: 6, number_of_lost_scores: 6,
    number_of_opponents_fouls: 0, number_of_made_fouls: 0, number_of_yellow_cards: 0,
    number_of_red_cards: 0)

### Matches for league A (Groupe A)

###### Match between E and F is done

match_between_E_and_F = Match.create(start_time: DateTime.now - 50 + 3.hour,
    end_time: DateTime.now - 50 + 5.hour, league: league_B_for_individual_fifa23_comb_cup,
    winner: fifa23_team_F, state: 2, league_weak: 1)
MatchParticipant.create(match: match_between_E_and_F, participant: fifa23_team_E,
    number_of_scores: 0)
MatchParticipant.create(match: match_between_E_and_F, participant: fifa23_team_F,
    number_of_scores: 6)

######### Round and Scores

round_of_match_between_E_and_F = Round.create(number: 1, match: match_between_E_and_F,
    winner: fifa23_team_F, state: 2)
Score.create(own_score: false, participant: fifa23_team_F, player: player_in_fifa23_team_F,
    round: round_of_match_between_E_and_F)
Score.create(own_score: false, participant: fifa23_team_F, player: player_in_fifa23_team_F,
    round: round_of_match_between_E_and_F)
Score.create(own_score: false, participant: fifa23_team_F, player: player_in_fifa23_team_F,
    round: round_of_match_between_E_and_F)
Score.create(own_score: false, participant: fifa23_team_F, player: player_in_fifa23_team_F,
    round: round_of_match_between_E_and_F)
Score.create(own_score: false, participant: fifa23_team_F, player: player_in_fifa23_team_F,
    round: round_of_match_between_E_and_F)
Score.create(own_score: false, participant: fifa23_team_F, player: player_in_fifa23_team_F,
    round: round_of_match_between_E_and_F)

###### Match between G and H is done

match_between_G_and_H = Match.create(start_time: DateTime.now - 50 + 6.hour,
    end_time: DateTime.now - 50 + 8.hour, league: league_B_for_individual_fifa23_comb_cup,
    winner: nil, state: 2, league_weak: 1)
MatchParticipant.create(match: match_between_G_and_H, participant: fifa23_team_G,
    number_of_scores: 0)
MatchParticipant.create(match: match_between_G_and_H, participant: fifa23_team_H,
    number_of_scores: 0)

######### Round and Scores

round_of_match_between_G_and_H = Round.create(number: 1, match: match_between_G_and_H,
    winner: nil, state: 2)

###### Match between E and G is done

match_between_E_and_G = Match.create(start_time: DateTime.now - 49 + 3.hour,
    end_time: DateTime.now - 49 + 5.hour, league: league_B_for_individual_fifa23_comb_cup,
    winner: fifa23_team_G, state: 2, league_weak: 2)
MatchParticipant.create(match: match_between_E_and_G, participant: fifa23_team_E,
    number_of_scores: 0)
MatchParticipant.create(match: match_between_E_and_G, participant: fifa23_team_G,
    number_of_scores: 1)

######### Round and Scores

round_of_match_between_E_and_G = Round.create(number: 1, match: match_between_E_and_G,
    winner: fifa23_team_G, state: 2)
Score.create(own_score: false, participant: fifa23_team_G, player: player_in_fifa23_team_G,
    round: round_of_match_between_E_and_G)

###### Match between F and H is done

match_between_F_and_H = Match.create(start_time: DateTime.now - 49 + 6.hour,
    end_time: DateTime.now - 49 + 8.hour, league: league_B_for_individual_fifa23_comb_cup,
    winner: fifa23_team_G, state: 2, league_weak: 1)
MatchParticipant.create(match: match_between_F_and_H, participant: fifa23_team_F,
    number_of_scores: 4)
MatchParticipant.create(match: match_between_F_and_H, participant: fifa23_team_H,
    number_of_scores: 1)

######### Round and Scores

round_of_match_between_F_and_H = Round.create(number: 1, match: match_between_F_and_H,
    winner: fifa23_team_F, state: 2)
Score.create(own_score: false, participant: fifa23_team_F, player: player_in_fifa23_team_F,
    round: round_of_match_between_F_and_H)
Score.create(own_score: false, participant: fifa23_team_F, player: player_in_fifa23_team_F,
    round: round_of_match_between_F_and_H)
Score.create(own_score: false, participant: fifa23_team_H, player: player_in_fifa23_team_H,
    round: round_of_match_between_F_and_H)
Score.create(own_score: true, participant: fifa23_team_F, player: player_in_fifa23_team_H,
    round: round_of_match_between_F_and_H) ### own goal
Score.create(own_score: true, participant: fifa23_team_F, player: player_in_fifa23_team_H,
    round: round_of_match_between_F_and_H) ### own goal

###### Match between F and G is done

match_between_F_and_G = Match.create(start_time: DateTime.now - 48 + 3.hour,
    end_time: DateTime.now - 48 + 5.hour, league: league_B_for_individual_fifa23_comb_cup,
    winner: fifa23_team_F, state: 2, league_weak: 3)
MatchParticipant.create(match: match_between_F_and_G, participant: fifa23_team_F,
    number_of_scores: 3)
MatchParticipant.create(match: match_between_F_and_G, participant: fifa23_team_G,
    number_of_scores: 0)

######### Round and Scores

round_of_match_between_F_and_G = Round.create(number: 1, match: match_between_F_and_G,
    winner: fifa23_team_F, state: 2)
Score.create(own_score: false, participant: fifa23_team_F, player: player_in_fifa23_team_F,
    round: round_of_match_between_F_and_G)
Score.create(own_score: false, participant: fifa23_team_F, player: player_in_fifa23_team_F,
    round: round_of_match_between_F_and_G)
Score.create(own_score: false, participant: fifa23_team_F, player: player_in_fifa23_team_F,
    round: round_of_match_between_F_and_G)

###### Match between E and H is done

match_between_E_and_H = Match.create(start_time: DateTime.now - 48 + 6.hour,
    end_time: DateTime.now - 48 + 8.hour, league: league_B_for_individual_fifa23_comb_cup,
    winner: fifa23_team_H, state: 2, league_weak: 3)
MatchParticipant.create(match: match_between_E_and_H, participant: fifa23_team_E,
    number_of_scores: 2)
MatchParticipant.create(match: match_between_E_and_H, participant: fifa23_team_H,
    number_of_scores: 5)

######### Round and Scores

round_of_match_between_E_and_H = Round.create(number: 1, match: match_between_E_and_H,
    winner: fifa23_team_H, state: 2)
Score.create(own_score: false, participant: fifa23_team_H, player: player_in_fifa23_team_H,
    round: round_of_match_between_E_and_H)
Score.create(own_score: false, participant: fifa23_team_H, player: player_in_fifa23_team_H,
    round: round_of_match_between_E_and_H)
Score.create(own_score: false, participant: fifa23_team_E, player: player_in_fifa23_team_E,
    round: round_of_match_between_E_and_H)
Score.create(own_score: false, participant: fifa23_team_E, player: player_in_fifa23_team_E,
    round: round_of_match_between_E_and_H)
Score.create(own_score: false, participant: fifa23_team_H, player: player_in_fifa23_team_H,
    round: round_of_match_between_E_and_H)
Score.create(own_score: false, participant: fifa23_team_H, player: player_in_fifa23_team_H,
    round: round_of_match_between_E_and_H)
Score.create(own_score: false, participant: fifa23_team_H, player: player_in_fifa23_team_H,
    round: round_of_match_between_E_and_H)

### Cup Participants

CupParticipant.create(cup: individual_fifa23_comb_cup, participant: fifa23_team_A,
    number_of_earned_scores: 9, number_of_lost_scores: 6, number_of_opponents_fouls: 0,
    number_of_made_fouls: 0, number_of_yellow_cards: 0, number_of_red_cards: 0)
CupParticipant.create(cup: individual_fifa23_comb_cup, participant: fifa23_team_B,
    number_of_earned_scores: 2, number_of_lost_scores: 3, number_of_opponents_fouls: 0,
    number_of_made_fouls: 0, number_of_yellow_cards: 0, number_of_red_cards: 0)
CupParticipant.create(cup: individual_fifa23_comb_cup, participant: fifa23_team_C,
    number_of_earned_scores: 6, number_of_lost_scores: 3, number_of_opponents_fouls: 0,
    number_of_made_fouls: 0, number_of_yellow_cards: 0, number_of_red_cards: 0)
CupParticipant.create(cup: individual_fifa23_comb_cup, participant: fifa23_team_D,
    number_of_earned_scores: 2, number_of_lost_scores: 8, number_of_opponents_fouls: 0,
    number_of_made_fouls: 0, number_of_yellow_cards: 0, number_of_red_cards: 0)
CupParticipant.create(cup: individual_fifa23_comb_cup, participant: fifa23_team_E,
    number_of_earned_scores: 2, number_of_lost_scores: 12, number_of_opponents_fouls: 0,
    number_of_made_fouls: 0, number_of_yellow_cards: 0, number_of_red_cards: 0)
CupParticipant.create(cup: individual_fifa23_comb_cup, participant: fifa23_team_F,
    number_of_earned_scores: 18, number_of_lost_scores: 3, number_of_opponents_fouls: 0,
    number_of_made_fouls: 0, number_of_yellow_cards: 0, number_of_red_cards: 0)
CupParticipant.create(cup: individual_fifa23_comb_cup, participant: fifa23_team_G,
    number_of_earned_scores: 1, number_of_lost_scores: 3, number_of_opponents_fouls: 0,
    number_of_made_fouls: 0, number_of_yellow_cards: 0, number_of_red_cards: 0)
CupParticipant.create(cup: individual_fifa23_comb_cup, participant: fifa23_team_H,
    number_of_earned_scores: 7, number_of_lost_scores: 9, number_of_opponents_fouls: 0,
    number_of_made_fouls: 0, number_of_yellow_cards: 0, number_of_red_cards: 0)

### Create knockout

knockout_for_individual_fifa23_comb_cup = Knockout.create(is_round_trip: true, away_goal: false,
    third_place_match: true, start_date: Date.today - 46, end_date: Date.today - 44,
    state: 2, cup: individual_fifa23_comb_cup,
    graph: {0 => 4, 1 => 4, 2 => 5, 3 => 5, 4 => 6, 5 => 6},
    graph_assignment: {0 => fifa23_team_A.id, 1 => fifa23_team_H.id,
        2 => fifa23_team_F.id, 3 => fifa23_team_C.id,
        4 => fifa23_team_A.id, 5 => fifa23_team_F.id,
        6 => fifa23_team_F.id},
    number_of_rows: 7, number_of_columns: 5,
    matches_hash: {2=>{2=>[1,3], 6=>[5,7]}, 4=>{4=>[2,6]}},
    winners_hash: {1=>{1=>fifa23_team_A.id, 3=>fifa23_team_H.id,
        5=>fifa23_team_F.id, 7=>fifa23_team_C.id},
        3=>{2=>fifa23_team_A.id, 6=>fifa23_team_F.id},
        5=>{4=>fifa23_team_F.id}},
    winner: fifa23_team_F)

### Knockout Participants

KnockoutParticipant.create(knockout: knockout_for_individual_fifa23_comb_cup,
    participant: fifa23_team_A, number_of_earned_scores: 3, number_of_lost_scores: 4,
    number_of_opponents_fouls: 0, number_of_made_fouls: 0, number_of_yellow_cards: 0,
    number_of_red_cards: 0)
KnockoutParticipant.create(knockout: knockout_for_individual_fifa23_comb_cup,
    participant: fifa23_team_H, number_of_earned_scores: 1, number_of_lost_scores: 3,
    number_of_opponents_fouls: 0, number_of_made_fouls: 0, number_of_yellow_cards: 0,
    number_of_red_cards: 0)
KnockoutParticipant.create(knockout: knockout_for_individual_fifa23_comb_cup,
    participant: fifa23_team_F, number_of_earned_scores: 5, number_of_lost_scores: 2,
    number_of_opponents_fouls: 0, number_of_made_fouls: 0, number_of_yellow_cards: 0,
    number_of_red_cards: 0)
KnockoutParticipant.create(knockout: knockout_for_individual_fifa23_comb_cup,
    participant: fifa23_team_C, number_of_earned_scores: 2, number_of_lost_scores: 2,
    number_of_opponents_fouls: 0, number_of_made_fouls: 0, number_of_yellow_cards: 0,
    number_of_red_cards: 0)

### Matches for knockout

###### Match between A and H in 1/2 is done

match_between_A_and_H_in_semi_final = Match.create(start_time: DateTime.now - 46 + 3.hour,
    end_time: DateTime.now - 46 + 5.hour, knockout: knockout_for_individual_fifa23_comb_cup,
    winner: fifa23_team_A, state: 2)
MatchParticipant.create(match: match_between_A_and_H_in_semi_final, participant: fifa23_team_A,
    number_of_scores: 1)
MatchParticipant.create(match: match_between_A_and_H_in_semi_final, participant: fifa23_team_H,
    number_of_scores: 0)

######### Round and Scores

round_of_match_between_A_and_H_in_semi_final = Round.create(number: 1,
    match: match_between_A_and_H_in_semi_final, winner: fifa23_team_A, state: 2)
Score.create(own_score: true, participant: fifa23_team_H, player: player_in_fifa23_team_A,
    round: round_of_match_between_A_and_H_in_semi_final) ###### own goal

###### Match between F and C in 1/2 is done

match_between_F_and_C_in_semi_final = Match.create(start_time: DateTime.now - 46 + 6.hour,
    end_time: DateTime.now - 46 + 8.hour, knockout: knockout_for_individual_fifa23_comb_cup,
    winner: fifa23_team_F, state: 2)
MatchParticipant.create(match: match_between_F_and_C_in_semi_final, participant: fifa23_team_F,
    number_of_scores: 1)
MatchParticipant.create(match: match_between_F_and_C_in_semi_final, participant: fifa23_team_C,
    number_of_scores: 0)

######### Round and Scores

round_of_match_between_F_and_C_in_semi_final = Round.create(number: 1,
    match: match_between_F_and_C_in_semi_final, winner: fifa23_team_F, state: 2)
Score.create(own_score: false, participant: fifa23_team_F, player: player_in_fifa23_team_F,
    round: round_of_match_between_F_and_C_in_semi_final)

###### Match between H and C in third-place match is done

match_between_H_and_C_in_third_place_match = Match.create(start_time: DateTime.now - 44 + 3.hour,
    end_time: DateTime.now - 44 + 8.hour, knockout: knockout_for_individual_fifa23_comb_cup,
    winner: fifa23_team_C, state: 2)
MatchParticipant.create(match: match_between_H_and_C_in_third_place_match, participant: fifa23_team_H,
    number_of_scores: 1)
MatchParticipant.create(match: match_between_H_and_C_in_third_place_match, participant: fifa23_team_C,
    number_of_scores: 2)

######### Round and Scores

round_of_match_between_H_and_C_in_third_place_match = Round.create(number: 1,
    match: match_between_H_and_C_in_third_place_match, winner: fifa23_team_C, state: 2)
Score.create(own_score: false, participant: fifa23_team_H, player: player_in_fifa23_team_H,
    round: round_of_match_between_H_and_C_in_third_place_match)
Score.create(own_score: true, participant: fifa23_team_H, player: player_in_fifa23_team_C,
    round: round_of_match_between_H_and_C_in_third_place_match) ###### own goal
Score.create(own_score: false, participant: fifa23_team_C, player: player_in_fifa23_team_C,
    round: round_of_match_between_H_and_C_in_third_place_match)

###### Match between A and F in final is done

match_between_A_and_F_in_final = Match.create(start_time: DateTime.now - 44 + 6.hour,
    end_time: DateTime.now - 44 + 8.hour, knockout: knockout_for_individual_fifa23_comb_cup,
    winner: fifa23_team_F, state: 2)
MatchParticipant.create(match: match_between_A_and_F_in_final, participant: fifa23_team_A,
    number_of_scores: 2)
MatchParticipant.create(match: match_between_A_and_F_in_final, participant: fifa23_team_F,
    number_of_scores: 4)

######### Round and Scores

round_of_match_between_A_and_F_in_final = Round.create(number: 1,
    match: match_between_A_and_F_in_final, winner: fifa23_team_F, state: 2)
Score.create(own_score: false, participant: fifa23_team_A, player: player_in_fifa23_team_A,
    round: round_of_match_between_A_and_F_in_final)
Score.create(own_score: false, participant: fifa23_team_A, player: player_in_fifa23_team_A,
    round: round_of_match_between_A_and_F_in_final)
Score.create(own_score: false, participant: fifa23_team_F, player: player_in_fifa23_team_F,
    round: round_of_match_between_A_and_F_in_final)
Score.create(own_score: false, participant: fifa23_team_F, player: player_in_fifa23_team_F,
    round: round_of_match_between_A_and_F_in_final)
Score.create(own_score: false, participant: fifa23_team_F, player: player_in_fifa23_team_F,
    round: round_of_match_between_A_and_F_in_final)
Score.create(own_score: false, participant: fifa23_team_F, player: player_in_fifa23_team_F,
    round: round_of_match_between_A_and_F_in_final)

### Knockout Node

winner_node = KnockoutNode.create(knockout: knockout_for_individual_fifa23_comb_cup,
    level: 0, number: 0, parent_node: nil)
third_place_node = KnockoutNode.create(knockout: knockout_for_individual_fifa23_comb_cup,
    level: 0, number: 1, parent_node: nil)

final_node = KnockoutNode.create(knockout: knockout_for_individual_fifa23_comb_cup,
    level: 1, number: 0, parent_node: winner_node, winner: fifa23_team_F)
KnockoutNodeMatch.create(knockout_node: final_node, match: match_between_A_and_F_in_final)

third_place_match_node = KnockoutNode.create(knockout: knockout_for_individual_fifa23_comb_cup,
    level: 1, number: 1, parent_node: third_place_node, winner: fifa23_team_C)
KnockoutNodeMatch.create(knockout_node: third_place_match_node,
    match: match_between_H_and_C_in_third_place_match)

semi_final_1_node = KnockoutNode.create(knockout: knockout_for_individual_fifa23_comb_cup,
    level: 2, number: 0, parent_node: final_node, winner: fifa23_team_A)
KnockoutNodeMatch.create(knockout_node: semi_final_1_node, match: match_between_A_and_H_in_semi_final)
semi_final_2_node = KnockoutNode.create(knockout: knockout_for_individual_fifa23_comb_cup,
    level: 2, number: 1, parent_node: final_node, winner: fifa23_team_F)
KnockoutNodeMatch.create(knockout_node: semi_final_2_node, match: match_between_F_and_C_in_semi_final)