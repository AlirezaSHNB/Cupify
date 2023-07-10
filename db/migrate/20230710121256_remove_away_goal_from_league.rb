class RemoveAwayGoalFromLeague < ActiveRecord::Migration[7.0]
  def change
    remove_column :leagues, :away_goal
  end
end
