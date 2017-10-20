class Party < ApplicationRecord
  belongs_to :user
  has_one :tables_activity

  def json
    super.merge('checked_in' => self.checked_in.strftime("%d %b %Y"))
  end
end
