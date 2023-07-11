class AddModeToCup < ActiveRecord::Migration[7.0]
  def change
    add_column :cups, :mode, :integer, default: 0
  end
end
