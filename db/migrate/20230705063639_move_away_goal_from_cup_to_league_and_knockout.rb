class MoveAwayGoalFromCupToLeagueAndKnockout < ActiveRecord::Migration[7.0]
  def change
    remove_column :cups, :away_goal
    add_column :leagues, :away_goal, :boolean, default: false
    add_column :knockouts, :away_goal, :boolean, default: false
  end
end
