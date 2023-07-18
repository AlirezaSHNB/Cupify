class AddReferencesToKnockoutNode < ActiveRecord::Migration[7.0]
  def change
    add_reference :knockout_nodes, :parent_node, index: true, foreign_key: { to_table: :knockout_nodes }
  end
end
