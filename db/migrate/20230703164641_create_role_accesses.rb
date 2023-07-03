class CreateRoleAccesses < ActiveRecord::Migration[7.0]
  def change
    create_table :role_accesses do |t|
      t.references :role, null: false, foreign_key: true
      t.references :access, null: false, foreign_key: true

      t.timestamps
    end
  end
end
