class AddSomeColumnsToPlayer < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :first_name, :string
    add_column :players, :last_name, :string
    add_column :players, :username, :string, null: false
  end
end
