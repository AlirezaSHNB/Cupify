class Knockout < ApplicationRecord
    has_many :knockout_participant, dependent: :destroy
    has_many :participants, through: :knockout_participant
    has_many :matches, dependent: :destroy
    belongs_to :winner, class_name: "Participant"
end
