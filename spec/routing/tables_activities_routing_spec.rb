require "rails_helper"

RSpec.describe TablesActivitiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tables_activities").to route_to("tables_activities#index")
    end

    it "routes to #new" do
      expect(:get => "/tables_activities/new").to route_to("tables_activities#new")
    end

    it "routes to #show" do
      expect(:get => "/tables_activities/1").to route_to("tables_activities#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tables_activities/1/edit").to route_to("tables_activities#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tables_activities").to route_to("tables_activities#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tables_activities/1").to route_to("tables_activities#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tables_activities/1").to route_to("tables_activities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tables_activities/1").to route_to("tables_activities#destroy", :id => "1")
    end

  end
end
