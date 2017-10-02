class AddUserRefToParties < ActiveRecord::Migration[5.0]
  def change
    add_reference :parties, :user, foreign_key: true
  end
end
