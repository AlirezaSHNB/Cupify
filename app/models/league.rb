class League < ApplicationRecord
    has_many :league_participant, dependent: :destroy
    has_many :participants, through: :league_participant
    has_many :matches, dependent: :destroy
    belongs_to :winner, class_name: "Participant"
end
