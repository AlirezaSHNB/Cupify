class Match < ApplicationRecord
    has_many :match_participant, dependent: :destroy
    has_many :participants, through: :match_participant
    has_many :rounds, dependent: :destroy
    has_many :scores, through: :rounds
    has_many :fouls, through: :rounds
    has_many :knockout_node_matches, dependent: :destroy
    has_many :knockout_nodes, through: :knockout_node_matches
    belongs_to :winner, class_name: "Participant", optional: true
    belongs_to :league, optional: true
    belongs_to :knockout, optional: true
    belongs_to :home_team, class_name: "Participant", optional: true

    enum state: { ready_to_start: 0, in_progress: 1, done: 2 }
end
