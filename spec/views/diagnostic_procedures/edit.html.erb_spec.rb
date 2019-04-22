require 'rails_helper'

RSpec.describe "diagnostic_procedures/edit", type: :view do
  before(:each) do
    @diagnostic_procedure = assign(:diagnostic_procedure, DiagnosticProcedure.create!())
  end

  it "renders the edit diagnostic_procedure form" do
    render

    assert_select "form[action=?][method=?]", diagnostic_procedure_path(@diagnostic_procedure), "post" do
    end
  end
end
