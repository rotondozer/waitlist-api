class TablesActivitySerializer < ActiveModel::Serializer
  attributes :id, :time_sat, :time_up, :table_id, :party_id
  belongs_to :table
  belongs_to :party

  def time_sat
    @time_sat = object.time_sat.strftime('%I:%M') unless object.time_sat.nil?
    @time_sat
  end

  def time_up
    @time_up = object.time_up.strftime('%I:%M') unless object.time_up.nil?
    @time_up
  end
end
