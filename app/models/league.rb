class League < ApplicationRecord
    serialize :ranking, Array
    serialize :win_order, Array

    has_many :league_participant, dependent: :destroy
    has_many :participants, through: :league_participant
    has_many :matches, dependent: :destroy
    belongs_to :winner, class_name: "Participant", optional: true
    belongs_to :cup

    enum win_factor: {points: 0, wins: 1, rounds_diff: 2, scores_diff: 3, face_to_face_match: 4, rounds: 5, scores: 6, red_cards: 7, yellow_cards: 8, fouls: 9 }
    enum state: { ready_to_start: 0, in_progress: 1, done: 2 }
end
