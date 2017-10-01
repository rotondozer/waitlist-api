require 'rails_helper'

RSpec.describe "WaitingParties", type: :request do
  describe "GET /waiting_parties" do
    it "works! (now write some real specs)" do
      get waiting_parties_path
      expect(response).to have_http_status(200)
    end
  end
end
