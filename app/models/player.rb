class Player < ApplicationRecord
    has_many :player_participant, dependent: :destroy
    has_many :participants, through: :player_participant
    has_many :scores
    has_many :fouls
end
