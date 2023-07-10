class AddWinOrderToLeague < ActiveRecord::Migration[7.0]
  def change
    add_column :leagues, :win_order, :text, null: false
  end
end
