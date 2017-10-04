class CreateTablesActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :tables_activities do |t|
      t.references :table, foreign_key: true
      t.time :time_sat
      t.time :time_up

      t.timestamps
    end
  end
end
