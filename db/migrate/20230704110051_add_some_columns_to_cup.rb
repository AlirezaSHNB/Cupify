class AddSomeColumnsToCup < ActiveRecord::Migration[7.0]
  def change
    add_column :cups, :start_date, :date
    add_column :cups, :end_date, :date
    add_column :cups, :field, :integer, null: false
    add_column :cups, :number_of_players, :integer, null: false
  end
end
