class LeagueParticipant < ApplicationRecord
  belongs_to :league
  belongs_to :participant
end
