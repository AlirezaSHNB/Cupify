class KnockoutParticipant < ApplicationRecord
  belongs_to :knockout
  belongs_to :participant
end
