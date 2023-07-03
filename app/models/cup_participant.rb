class CupParticipant < ApplicationRecord
  belongs_to :cup
  belongs_to :participant
end
