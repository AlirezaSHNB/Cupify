class Round < ApplicationRecord
    has_many :scores, dependent: :destroy
    has_many :fouls, dependent: :destroy
    belongs_to :winner, class_name: "Participant", optional: true
    belongs_to :match

    enum state: { ready_to_start: 0, in_progress: 1, done: 2 }
end
