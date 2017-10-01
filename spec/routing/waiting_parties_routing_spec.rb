require "rails_helper"

RSpec.describe WaitingPartiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/waiting_parties").to route_to("waiting_parties#index")
    end

    it "routes to #new" do
      expect(:get => "/waiting_parties/new").to route_to("waiting_parties#new")
    end

    it "routes to #show" do
      expect(:get => "/waiting_parties/1").to route_to("waiting_parties#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/waiting_parties/1/edit").to route_to("waiting_parties#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/waiting_parties").to route_to("waiting_parties#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/waiting_parties/1").to route_to("waiting_parties#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/waiting_parties/1").to route_to("waiting_parties#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/waiting_parties/1").to route_to("waiting_parties#destroy", :id => "1")
    end

  end
end
