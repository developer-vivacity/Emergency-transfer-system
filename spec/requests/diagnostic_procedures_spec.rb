require 'rails_helper'

RSpec.describe "DiagnosticProcedures", type: :request do
  describe "GET /diagnostic_procedures" do
    it "works! (now write some real specs)" do
      get diagnostic_procedures_path
      expect(response).to have_http_status(200)
    end
  end
end
