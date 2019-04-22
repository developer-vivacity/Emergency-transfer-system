require 'rails_helper'

RSpec.describe "diagnostic_procedures/show", type: :view do
  before(:each) do
    @diagnostic_procedure = assign(:diagnostic_procedure, DiagnosticProcedure.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
