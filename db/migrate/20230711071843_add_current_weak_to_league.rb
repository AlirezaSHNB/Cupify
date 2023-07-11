class AddCurrentWeakToLeague < ActiveRecord::Migration[7.0]
  def change
    add_column :leagues, :current_weak, :integer
  end
end
