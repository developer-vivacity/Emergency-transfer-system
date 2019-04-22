require 'rails_helper'

RSpec.describe "Symptoms", type: :request do
  describe "GET /symptoms" do
    it "works! (now write some real specs)" do
      get symptoms_path
      expect(response).to have_http_status(200)
    end
  end
end
