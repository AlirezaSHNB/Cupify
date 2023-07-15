class AddSomeFieldsToKnockout < ActiveRecord::Migration[7.0]
  def change
    add_column :knockouts, :number_of_rows, :integer
    add_column :knockouts, :number_of_columns, :integer
    add_column :knockouts, :matches_hash, :text
    add_column :knockouts, :winners_hash, :text
  end
end
