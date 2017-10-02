class RemoveAvailableFromTables < ActiveRecord::Migration[5.0]
  def change
    remove_column :tables, :available, :boolean
    remove_column :tables, :waiting_party_id, :integer
  end
end
