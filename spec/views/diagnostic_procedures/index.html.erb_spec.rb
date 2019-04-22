require 'rails_helper'

RSpec.describe "diagnostic_procedures/index", type: :view do
  before(:each) do
    assign(:diagnostic_procedures, [
      DiagnosticProcedure.create!(),
      DiagnosticProcedure.create!()
    ])
  end

  it "renders a list of diagnostic_procedures" do
    render
  end
end
