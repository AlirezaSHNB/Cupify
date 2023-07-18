class AddWinnerToKnockoutNode < ActiveRecord::Migration[7.0]
  def change
    add_reference :knockout_nodes, :winner, index: true, foreign_key: { to_table: :participants }
  end
end
