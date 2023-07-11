class AddNumberOfEarnedAndLostRoundsAndScoresAndFoulsAndYCardsAndRCardsToLeagueParticipantAndKnockoutParticipantAndCupParticipant < ActiveRecord::Migration[7.0]
  def change
    add_column :league_participants, :number_of_earned_scores, :integer, default: 0
    add_column :league_participants, :number_of_lost_scores, :integer, default: 0
    add_column :league_participants, :number_of_opponents_fouls, :integer, default: 0
    add_column :league_participants, :number_of_made_fouls, :integer, default: 0
    add_column :league_participants, :number_of_yellow_cards, :integer, default: 0
    add_column :league_participants, :number_of_red_cards, :integer, default: 0
    add_column :knockout_participants, :number_of_earned_scores, :integer, default: 0
    add_column :knockout_participants, :number_of_lost_scores, :integer, default: 0
    add_column :knockout_participants, :number_of_opponents_fouls, :integer, default: 0
    add_column :knockout_participants, :number_of_made_fouls, :integer, default: 0
    add_column :knockout_participants, :number_of_yellow_cards, :integer, default: 0
    add_column :knockout_participants, :number_of_red_cards, :integer, default: 0
    add_column :cup_participants, :number_of_earned_scores, :integer, default: 0
    add_column :cup_participants, :number_of_lost_scores, :integer, default: 0
    add_column :cup_participants, :number_of_opponents_fouls, :integer, default: 0
    add_column :cup_participants, :number_of_made_fouls, :integer, default: 0
    add_column :cup_participants, :number_of_yellow_cards, :integer, default: 0
    add_column :cup_participants, :number_of_red_cards, :integer, default: 0
  end
end
