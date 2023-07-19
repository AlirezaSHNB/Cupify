class CreateKnockoutNodes < ActiveRecord::Migration[7.0]
  def change
    create_table :knockout_nodes do |t|
      t.integer :level
      t.integer :number
      t.references :knockout, foreign_key: true, null: false
      t.references :winner, foreign_key: { to_table: :participants }

      t.timestamps
    end
  end
end
