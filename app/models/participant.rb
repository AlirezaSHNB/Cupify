class Participant < ApplicationRecord
    has_many :player_participant, dependent: :destroy
    has_many :players, through: :player_participant
    has_many :cup_participant, dependent: :destroy
    has_many :cups, through: :cup_participant
    has_many :league_participant, dependent: :destroy
    has_many :leagues, through: :league_participant
    has_many :knockout_participant, dependent: :destroy
    has_many :knockouts, through: :knockout_participant
    has_many :scores, dependent: :destroy
    has_many :fouls, dependent: :destroy

    scope :single_players, -> { joins(:players).group('participants.id').having('COUNT(players.id) = 1') }
    scope :multiple_players, -> { joins(:players).group('participants.id').having('COUNT(players.id) > 1') }
end
