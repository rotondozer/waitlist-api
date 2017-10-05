# frozen_string_literal: true

class Table < ApplicationRecord
  belongs_to :user
  # I think it's best to remove dependent: :destroy on future iterations to keep
  # the record of the table activity if the table needs to be destroyed
  has_many :tables_activities, dependent: :destroy
end
