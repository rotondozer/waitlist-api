class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :tables do |t|
      t.integer :max_seat
      t.integer :min_seat
      t.boolean :available
      t.references :parties, foreign_key: true

      t.timestamps
    end
  end
end
