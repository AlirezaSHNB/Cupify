class Cup < ApplicationRecord
    has_many :cup_participant, dependent: :destroy
    has_many :participants, through: :cup_participant
    has_many :leagues, dependent: :destroy
    has_many :knockouts, dependent: :destroy
    belongs_to :winner, class_name: "Participant"
end
