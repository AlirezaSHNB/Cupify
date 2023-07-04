class ChangeNameToNicknameInPlayer < ActiveRecord::Migration[7.0]
  def change
    rename_column :players, :name, :nickname
  end
end
