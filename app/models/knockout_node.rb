class KnockoutNode < ApplicationRecord
    has_many :knockout_node_matches, dependent: :destroy
    has_many :matches, through: :knockout_node_matches
    belongs_to :parent_node, class_name: "KnockoutNode", optional: true
    belongs_to :winner, class_name: "Participant", optional: true
    belongs_to :knockout
end
