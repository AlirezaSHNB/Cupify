class AddSomeColumnsToKnockout < ActiveRecord::Migration[7.0]
  def change
    add_column :knockouts, :start_date, :date
    add_column :knockouts, :end_date, :date
    add_column :knockouts, :first_matches, :text
    add_column :knockouts, :third_place_match, :boolean, default: false
  end
end
