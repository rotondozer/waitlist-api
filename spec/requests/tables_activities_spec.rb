require 'rails_helper'

RSpec.describe "TablesActivities", type: :request do
  describe "GET /tables_activities" do
    it "works! (now write some real specs)" do
      get tables_activities_path
      expect(response).to have_http_status(200)
    end
  end
end
