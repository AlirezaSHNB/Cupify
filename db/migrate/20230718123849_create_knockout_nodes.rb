class CreateKnockoutNodes < ActiveRecord::Migration[7.0]
  def change
    create_table :knockout_nodes do |t|
      t.integer :level
      t.integer :number

      t.timestamps
    end
  end
end
