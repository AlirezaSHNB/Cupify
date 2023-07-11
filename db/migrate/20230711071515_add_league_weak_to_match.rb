class AddLeagueWeakToMatch < ActiveRecord::Migration[7.0]
  def change
    add_column :matches, :league_weak, :integer
  end
end
