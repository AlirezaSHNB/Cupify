class AddSomeMissingColumnsToCup < ActiveRecord::Migration[7.0]
  def change
    add_column :cups, :state, :integer, null: false, default: 0
    add_column :cups, :away_goal, :boolean, default: false
    add_column :cups, :min_number_of_participants, :integer, default: 3
    add_column :cups, :max_number_of_participants, :integer, default: 20
  end
end
