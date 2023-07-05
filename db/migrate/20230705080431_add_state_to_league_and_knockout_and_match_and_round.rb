class AddStateToLeagueAndKnockoutAndMatchAndRound < ActiveRecord::Migration[7.0]
  def change
    add_column :leagues, :state, :integer, null: false, default: 0
    add_column :knockouts, :state, :integer, null: false, default: 0
    add_column :matches, :state, :integer, null: false, default: 0
    add_column :rounds, :state, :integer, null: false, default: 0
  end
end
