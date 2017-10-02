class TablesActivity < ApplicationRecord
  # optional: true allows there to be empty fk when creating
  belongs_to :table
  belongs_to :party, optional: true
end
