class Knockout < ApplicationRecord
    serialize :first_matches, Hash

    has_many :knockout_participant, dependent: :destroy
    has_many :participants, through: :knockout_participant
    has_many :matches, dependent: :destroy
    has_many :knockout_nodes, dependent: :destroy
    belongs_to :winner, class_name: "Participant", optional: true
    belongs_to :cup

    enum state: { ready_to_start: 0, in_progress: 1, done: 2 }

    def generate_total_groups
        knockout_nodes = KnockoutNode.where(knockout_id: self.id).order(level: :desc)
        max_level = knockout_nodes.first.level
        total_groups = []
        knockout_nodes.each do |knockout_node|
            knockout_node_key = "#{knockout_node.level}-#{knockout_node.number}"
            parent = knockout_node.parent_node
            winner = knockout_node.winner&.name
            players_status = []
            if knockout_node.matches.empty?
                child_node = KnockoutNode.find_by(parent_node: knockout_node)
                if knockout_node.level == max_level
                    players = []
                    Participant.where(id: knockout_node.knockout.first_matches[knockout_node.number]).each do |participant|
                        players << participant
                    end
                    # players = Participant.where(id: knockout_node.knockout.first_matches[knockout_node.level])
                else
                    players = [child_node&.winner]
                end
            else
                players = knockout_node.matches[0].participants
                players_status = generate_players_status(knockout_node, players, knockout_node_key)
            end
            group = generate_group(players, knockout_node_key, parent, winner, players_status)
            total_groups << group
        end
        

        total_groups
    end

    private
    def generate_group(players, knockout_node_key, parent, winner, players_status)
        players_score = []
        players_status.each do |player_status|
            if player_status.nil?
                players_score << nil
            else
                players_score << player_status[:score]
            end 
        end
        group = {key: knockout_node_key,
            parent: parent.nil? ? "-1-0" : "#{parent.level}-#{parent.number}",
            player1: players[0]&.name,
            player2: players[1]&.name,
            player1_score: winner.nil? ? "-" : players_score[0],
            player2_score: winner.nil? ? "-" : players_score[1],
            winner: winner,
            parentNumber: parent&.number}
    end

    def generate_players_status(knockout_node, players, knockout_node_key)
        players_status = []
        knockout_node.matches.each do |match|
            players.each do |player|
                player_status = {key: knockout_node_key, player: player,
                    score: MatchParticipant.where(participant: player,
                        match: match).sum(:number_of_scores)}
                players_status << player_status
            end
        end
        players_status
    end
end
