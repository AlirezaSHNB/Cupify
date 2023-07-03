class AddAssocations < ActiveRecord::Migration[7.0]
  def change
    add_reference :cups, :winner, index: true, foreign_key: { to_table: :participants }
    add_reference :leagues, :cup, null: false, index: true, foreign_key: true
    add_reference :leagues, :winner, index: true, foreign_key: { to_table: :participants }
    add_reference :knockouts, :cup, null: false, index: true, foreign_key: true
    add_reference :knockouts, :winner, index: true, foreign_key: { to_table: :participants }
    add_reference :matches, :home_team, index: true, foreign_key: { to_table: :participants }
    add_reference :matches, :league, index: true, foreign_key: true
    add_reference :matches, :knockout, index: true, foreign_key: true
    add_reference :matches, :winner, index: true, foreign_key: { to_table: :participants }
    add_reference :rounds, :match, null: false, index: true, foreign_key: true
    add_reference :rounds, :winner, index: true, foreign_key: { to_table: :participants }
    add_reference :fouls, :round, null: false, index: true, foreign_key: true
    add_reference :fouls, :participant, null: false, index: true, foreign_key: true
    add_reference :fouls, :player, index: true, foreign_key: true
    add_reference :users, :role, null: false, index: true, foreign_key: true
  end
end
