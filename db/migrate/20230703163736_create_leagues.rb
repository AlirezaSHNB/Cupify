class CreateLeagues < ActiveRecord::Migration[7.0]
  def change
    create_table :leagues do |t|
      t.integer :points_for_win
      t.integer :points_for_draw
      t.integer :points_for_lost
      t.boolean :is_round_trip

      t.timestamps
    end
  end
end
