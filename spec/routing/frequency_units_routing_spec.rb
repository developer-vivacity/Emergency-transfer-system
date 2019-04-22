require "rails_helper"

RSpec.describe FrequencyUnitsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/frequency_units").to route_to("frequency_units#index")
    end

    it "routes to #new" do
      expect(:get => "/frequency_units/new").to route_to("frequency_units#new")
    end

    it "routes to #show" do
      expect(:get => "/frequency_units/1").to route_to("frequency_units#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/frequency_units/1/edit").to route_to("frequency_units#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/frequency_units").to route_to("frequency_units#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/frequency_units/1").to route_to("frequency_units#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/frequency_units/1").to route_to("frequency_units#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/frequency_units/1").to route_to("frequency_units#destroy", :id => "1")
    end
  end
end
