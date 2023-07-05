class Foul < ApplicationRecord
    belongs_to :round
    belongs_to :participant
    belongs_to :player, optional: true
    has_one :match, through: :round
end
