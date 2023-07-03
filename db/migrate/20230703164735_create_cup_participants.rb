class CreateCupParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :cup_participants do |t|
      t.references :cup, null: false, foreign_key: true
      t.references :participant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
