class Cup < ApplicationRecord
    has_many :cup_participant, dependent: :destroy
    has_many :participants, through: :cup_participant
    has_many :leagues, dependent: :destroy
    has_many :knockouts, dependent: :destroy
    belongs_to :winner, class_name: "Participant", optional: true

    enum field: { futsal: 0, football: 1, individual_ping_pong: 2, team_ping_pong: 3, individual_fifa23: 4, team_fifa23: 5, individual_pes23: 6, team_pes23: 7 }
    enum state: { configuration: 0, setting_participants: 1, ready_to_start: 2, in_progress: 3, done: 4 }
end
