# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :parties
  has_many :tables
  # has_many :tables_activities, through: :tables
end
