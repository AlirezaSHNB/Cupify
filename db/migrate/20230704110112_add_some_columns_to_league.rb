class AddSomeColumnsToLeague < ActiveRecord::Migration[7.0]
  def change
    add_column :leagues, :start_date, :date
    add_column :leagues, :end_date, :date
    add_column :leagues, :ranking, :text
  end
end
