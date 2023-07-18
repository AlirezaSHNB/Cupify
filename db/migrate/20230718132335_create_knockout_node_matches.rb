class CreateKnockoutNodeMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :knockout_node_matches do |t|
      t.references :knockout_node, null: false, foreign_key: true
      t.references :match, null: false, foreign_key: true

      t.timestamps
    end
  end
end
