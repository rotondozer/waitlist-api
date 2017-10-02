class RenameWaitingPartiesToParties < ActiveRecord::Migration[5.0]
  def change
    rename_table :waiting_parties, :parties
  end
end
