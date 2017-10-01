class Table < ApplicationRecord
  belongs_to :waiting_party
  has_many :tables
end
