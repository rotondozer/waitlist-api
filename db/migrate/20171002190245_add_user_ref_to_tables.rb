class AddUserRefToTables < ActiveRecord::Migration[5.0]
  def change
    add_reference :tables, :user, foreign_key: true
  end
end
