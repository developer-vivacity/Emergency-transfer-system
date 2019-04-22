require 'rails_helper'

RSpec.describe "mass_units/new", type: :view do
  before(:each) do
    assign(:mass_unit, MassUnit.new(
      :unit => "MyString"
    ))
  end

  it "renders new mass_unit form" do
    render

    assert_select "form[action=?][method=?]", mass_units_path, "post" do

      assert_select "input[name=?]", "mass_unit[unit]"
    end
  end
end
