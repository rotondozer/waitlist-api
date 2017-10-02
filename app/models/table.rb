# frozen_string_literal: true

class Table < ApplicationRecord
  belongs_to :user
  has_many :tables_activities
end
