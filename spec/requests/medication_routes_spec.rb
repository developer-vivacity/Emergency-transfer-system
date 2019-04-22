require 'rails_helper'

RSpec.describe "MedicationRoutes", type: :request do
  describe "GET /medication_routes" do
    it "works! (now write some real specs)" do
      get medication_routes_path
      expect(response).to have_http_status(200)
    end
  end
end
