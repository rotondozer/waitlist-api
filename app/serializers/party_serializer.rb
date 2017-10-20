class PartySerializer < ActiveModel::Serializer
  attributes :id, :name, :size, :checked_in, :notes, :est_wait
  has_one :tables_activity
  belongs_to :user

  def checked_in
    @time = object.checked_in.strftime("%I:%M")
    @time
  end
end
