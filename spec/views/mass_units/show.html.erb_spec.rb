require 'rails_helper'

RSpec.describe "mass_units/show", type: :view do
  before(:each) do
    @mass_unit = assign(:mass_unit, MassUnit.create!(
      :unit => "Unit"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Unit/)
  end
end
