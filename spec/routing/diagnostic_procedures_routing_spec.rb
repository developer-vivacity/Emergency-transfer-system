require "rails_helper"

RSpec.describe DiagnosticProceduresController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/diagnostic_procedures").to route_to("diagnostic_procedures#index")
    end

    it "routes to #new" do
      expect(:get => "/diagnostic_procedures/new").to route_to("diagnostic_procedures#new")
    end

    it "routes to #show" do
      expect(:get => "/diagnostic_procedures/1").to route_to("diagnostic_procedures#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/diagnostic_procedures/1/edit").to route_to("diagnostic_procedures#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/diagnostic_procedures").to route_to("diagnostic_procedures#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/diagnostic_procedures/1").to route_to("diagnostic_procedures#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/diagnostic_procedures/1").to route_to("diagnostic_procedures#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/diagnostic_procedures/1").to route_to("diagnostic_procedures#destroy", :id => "1")
    end
  end
end
