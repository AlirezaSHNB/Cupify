class CreateLeagueParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :league_participants do |t|
      t.references :league, null: false, foreign_key: true
      t.references :participant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
