require 'rails_helper'

RSpec.describe "mass_units/edit", type: :view do
  before(:each) do
    @mass_unit = assign(:mass_unit, MassUnit.create!(
      :unit => "MyString"
    ))
  end

  it "renders the edit mass_unit form" do
    render

    assert_select "form[action=?][method=?]", mass_unit_path(@mass_unit), "post" do

      assert_select "input[name=?]", "mass_unit[unit]"
    end
  end
end
