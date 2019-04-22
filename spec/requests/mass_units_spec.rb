require 'rails_helper'

RSpec.describe "MassUnits", type: :request do
  describe "GET /mass_units" do
    it "works! (now write some real specs)" do
      get mass_units_path
      expect(response).to have_http_status(200)
    end
  end
end
