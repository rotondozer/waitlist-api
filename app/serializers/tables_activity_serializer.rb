class TablesActivitySerializer < ActiveModel::Serializer
  attributes :id, :time_sat, :time_up
  has_one :table
end
