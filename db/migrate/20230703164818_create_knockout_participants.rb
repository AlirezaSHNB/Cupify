class CreateKnockoutParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :knockout_participants do |t|
      t.references :knockout, null: false, foreign_key: true
      t.references :participant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
