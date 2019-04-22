require 'rails_helper'

RSpec.describe "FrequencyUnits", type: :request do
  describe "GET /frequency_units" do
    it "works! (now write some real specs)" do
      get frequency_units_path
      expect(response).to have_http_status(200)
    end
  end
end
