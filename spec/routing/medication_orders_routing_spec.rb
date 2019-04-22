require "rails_helper"

RSpec.describe MedicationOrdersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/medication_orders").to route_to("medication_orders#index")
    end

    it "routes to #new" do
      expect(:get => "/medication_orders/new").to route_to("medication_orders#new")
    end

    it "routes to #show" do
      expect(:get => "/medication_orders/1").to route_to("medication_orders#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/medication_orders/1/edit").to route_to("medication_orders#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/medication_orders").to route_to("medication_orders#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/medication_orders/1").to route_to("medication_orders#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/medication_orders/1").to route_to("medication_orders#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/medication_orders/1").to route_to("medication_orders#destroy", :id => "1")
    end
  end
end
