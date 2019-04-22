require 'rails_helper'

RSpec.describe "mass_units/index", type: :view do
  before(:each) do
    assign(:mass_units, [
      MassUnit.create!(
        :unit => "Unit"
      ),
      MassUnit.create!(
        :unit => "Unit"
      )
    ])
  end

  it "renders a list of mass_units" do
    render
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
  end
end
