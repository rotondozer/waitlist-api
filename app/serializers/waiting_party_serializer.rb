class WaitingPartySerializer < ActiveModel::Serializer
  attributes :id, :name, :size, :checked_in, :est_wait, :notes
end
