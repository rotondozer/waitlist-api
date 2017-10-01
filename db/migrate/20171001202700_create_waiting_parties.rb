class CreateWaitingParties < ActiveRecord::Migration[5.0]
  def change
    create_table :waiting_parties do |t|
      t.string :name
      t.integer :size
      t.time :checked_in
      t.string :est_wait
      t.string :notes

      t.timestamps
    end
  end
end
