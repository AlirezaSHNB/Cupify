class Cup < ApplicationRecord
    has_many :cup_participant, dependent: :destroy
    has_many :participants, through: :cup_participant
    has_many :leagues, dependent: :destroy
    has_many :knockouts, dependent: :destroy
    belongs_to :winner, class_name: "Participant", optional: true

    enum mode: { league: 0, knockout: 1, combination: 2 }
    enum field: { futsal: 0, football: 1, individual_ping_pong: 2, team_ping_pong: 3, individual_fifa23: 4, team_fifa23: 5, individual_pes23: 6, team_pes23: 7 }
    enum state: { setting_participants: 0, ready_to_start: 1, in_progress: 2, done: 3 }
end
