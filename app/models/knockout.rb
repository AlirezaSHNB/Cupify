class Knockout < ApplicationRecord
    serialize :graph, Hash
    serialize :graph_assignment, Hash

    has_many :knockout_participant, dependent: :destroy
    has_many :participants, through: :knockout_participant
    has_many :matches, dependent: :destroy
    belongs_to :winner, class_name: "Participant", optional: true
    belongs_to :cup

    enum state: { ready_to_start: 0, in_progress: 1, done: 2 }
end
