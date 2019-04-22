require "rails_helper"

RSpec.describe MassUnitsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/mass_units").to route_to("mass_units#index")
    end

    it "routes to #new" do
      expect(:get => "/mass_units/new").to route_to("mass_units#new")
    end

    it "routes to #show" do
      expect(:get => "/mass_units/1").to route_to("mass_units#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mass_units/1/edit").to route_to("mass_units#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/mass_units").to route_to("mass_units#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/mass_units/1").to route_to("mass_units#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/mass_units/1").to route_to("mass_units#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mass_units/1").to route_to("mass_units#destroy", :id => "1")
    end
  end
end
