require "rails_helper"

RSpec.describe OrderFrequenciesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/order_frequencies").to route_to("order_frequencies#index")
    end

    it "routes to #new" do
      expect(:get => "/order_frequencies/new").to route_to("order_frequencies#new")
    end

    it "routes to #show" do
      expect(:get => "/order_frequencies/1").to route_to("order_frequencies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/order_frequencies/1/edit").to route_to("order_frequencies#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/order_frequencies").to route_to("order_frequencies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/order_frequencies/1").to route_to("order_frequencies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/order_frequencies/1").to route_to("order_frequencies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/order_frequencies/1").to route_to("order_frequencies#destroy", :id => "1")
    end
  end
end
