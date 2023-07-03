class CreatePlayerParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :player_participants do |t|
      t.references :player, null: false, foreign_key: true
      t.references :participant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
