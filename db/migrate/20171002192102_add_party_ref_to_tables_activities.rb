class AddPartyRefToTablesActivities < ActiveRecord::Migration[5.0]
  def change
    add_reference :tables_activities, :party, foreign_key: true
  end
end
