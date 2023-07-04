class Match < ApplicationRecord
    has_many :match_participant, dependent: :destroy
    has_many :participants, through: :match_participant
    has_many :rounds, dependent: :destroy
    has_many :scores, dependent: :destroy
    has_many :fouls, dependent: :destroy
    belongs_to :winner, class_name: "Participant"
    belongs_to :league
    belongs_to :knockout
end
