class AddAssociationsToScore < ActiveRecord::Migration[7.0]
  def change
    add_reference :scores, :round, null: false, index: true, foreign_key: true
    add_reference :scores, :participant, null: false, index: true, foreign_key: true
    add_reference :scores, :player, index: true, foreign_key: true
  end
end
