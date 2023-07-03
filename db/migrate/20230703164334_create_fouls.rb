class CreateFouls < ActiveRecord::Migration[7.0]
  def change
    create_table :fouls do |t|
      t.boolean :own_score
      t.boolean :yellow_card
      t.boolean :red_card

      t.timestamps
    end
  end
end
