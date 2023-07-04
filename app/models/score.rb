class Score < ApplicationRecord
    belongs_to :round
    belongs_to :participant
    belongs_to :player
    has_one :match, through: :round
end
