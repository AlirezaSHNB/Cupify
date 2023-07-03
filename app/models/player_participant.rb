class PlayerParticipant < ApplicationRecord
  belongs_to :player
  belongs_to :participant
end
