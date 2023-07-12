class Knockout < ApplicationRecord
    serialize :graph, Hash
    serialize :graph_assignment, Hash

    has_many :knockout_participant, dependent: :destroy
    has_many :participants, through: :knockout_participant
    has_many :matches, dependent: :destroy
    belongs_to :winner, class_name: "Participant", optional: true
    belongs_to :cup

    enum state: { ready_to_start: 0, in_progress: 1, done: 2 }

    def generate_matches
        matches = {}
        graph.values.uniq.each do |value|
            participants_id = graph.select { |k, v| v == value }.keys
            first_team = Participant.find(graph_assignment[participants_id[0]]).name
            second_team = Participant.find(graph_assignment[participants_id[1]]).name
            participants = [first_team, second_team]
            winner = Participant.find(graph_assignment[value]).name
            matches[participants] = winner
        end
        matches
    end
end
