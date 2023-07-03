class Round < ApplicationRecord
    has_many :scores, dependent: :destroy
    has_many :fouls, dependent: :destroy
    belongs_to :winner, class_name: "Participant"
    belongs_to :match
end
