class AddKnockoutToKnockoutNode < ActiveRecord::Migration[7.0]
  def change
    add_reference :knockout_nodes, :knockout, null: false, index: true, foreign_key: true
  end
end
