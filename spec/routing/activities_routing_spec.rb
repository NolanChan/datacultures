require "rails_helper"

RSpec.describe Api::V1::ActivitiesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/api/v1/activities").to route_to("api/v1/activities#index")
    end

    it "routes to #show" do
      expect(:get => "/api/v1/activities/1").to route_to("api/v1/activities#show", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/api/v1/activities").to route_to("api/v1/activities#create")
    end

    it "routes to #update" do
      expect(:put => "/api/v1/activities/1").to route_to("api/v1/activities#update", :id => "1")
    end

  end
end
