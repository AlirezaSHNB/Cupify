class AddSomeColumnsToLeagueParticipant < ActiveRecord::Migration[7.0]
  def change
    add_column :league_participants, :number_of_wins, :integer, null: false, default: 0
    add_column :league_participants, :number_of_draws, :integer, null: false, default: 0
    add_column :league_participants, :number_of_losts, :integer, null: false, default: 0
    add_column :league_participants, :points, :integer, null: false, default: 0
  end
end
