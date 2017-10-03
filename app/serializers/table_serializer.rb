class TableSerializer < ActiveModel::Serializer
  attributes :id, :max_seat, :min_seat
  belongs_to :user
  has_many :tables_activities
end
