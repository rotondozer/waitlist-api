class TablesActivitySerializer < ActiveModel::Serializer
  attributes :id, :time_sat, :time_up, :table_id, :party_id
  belongs_to :table
  belongs_to :party
end
