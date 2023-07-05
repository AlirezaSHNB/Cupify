class AddNumberOfScoresToMatchParticipant < ActiveRecord::Migration[7.0]
  def change
    add_column :match_participants, :number_of_scores, :integer, null: false, default: 0
  end
end
