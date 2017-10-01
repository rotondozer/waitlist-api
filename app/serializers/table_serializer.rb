class TableSerializer < ActiveModel::Serializer
  attributes :id, :max_seat, :min_seat, :available
  has_one :waiting_party
end
