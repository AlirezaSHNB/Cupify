class CreateScores < ActiveRecord::Migration[7.0]
  def change
    create_table :scores do |t|
      t.boolean :own_score

      t.timestamps
    end
  end
end
