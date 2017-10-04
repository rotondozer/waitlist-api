class PartySerializer < ActiveModel::Serializer
  attributes :id, :name, :size, :checked_in, :notes, :est_wait
  has_one :tables_activity
  belongs_to :user
end
