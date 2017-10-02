class Party < ApplicationRecord
  belongs_to :user
  has_one :tables_activity
end
