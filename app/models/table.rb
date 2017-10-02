class Table < ApplicationRecord
  # optional: true allows there to be empty fk when creating
  # My db logic depends on this!
  belongs_to :waiting_party, optional: true
  has_many :tables_activities
end
