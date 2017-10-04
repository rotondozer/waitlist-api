class RemoveAvailableFromTables < ActiveRecord::Migration[5.0]
  def change
    remove_column :tables, :available, :boolean
  end
end
