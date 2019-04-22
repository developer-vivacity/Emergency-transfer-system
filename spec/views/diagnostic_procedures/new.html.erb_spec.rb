require 'rails_helper'

RSpec.describe "diagnostic_procedures/new", type: :view do
  before(:each) do
    assign(:diagnostic_procedure, DiagnosticProcedure.new())
  end

  it "renders new diagnostic_procedure form" do
    render

    assert_select "form[action=?][method=?]", diagnostic_procedures_path, "post" do
    end
  end
end
