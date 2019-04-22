require 'rails_helper'

RSpec.describe "OrderFrequencies", type: :request do
  describe "GET /order_frequencies" do
    it "works! (now write some real specs)" do
      get order_frequencies_path
      expect(response).to have_http_status(200)
    end
  end
end
