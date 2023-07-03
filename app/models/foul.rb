class Foul < ApplicationRecord
    belongs_to :round
    belongs_to :participant
    belongs_to :player
end
