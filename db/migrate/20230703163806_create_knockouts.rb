class CreateKnockouts < ActiveRecord::Migration[7.0]
  def change
    create_table :knockouts do |t|
      t.boolean :is_round_trip

      t.timestamps
    end
  end
end
