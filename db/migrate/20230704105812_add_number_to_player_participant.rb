class AddNumberToPlayerParticipant < ActiveRecord::Migration[7.0]
  def change
    add_column :player_participants, :number, :integer
  end
end
