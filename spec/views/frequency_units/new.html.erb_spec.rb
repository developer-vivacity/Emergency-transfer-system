require 'rails_helper'

RSpec.describe "frequency_units/new", type: :view do
  before(:each) do
    assign(:frequency_unit, FrequencyUnit.new(
      :name => "MyString"
    ))
  end

  it "renders new frequency_unit form" do
    render

    assert_select "form[action=?][method=?]", frequency_units_path, "post" do

      assert_select "input[name=?]", "frequency_unit[name]"
    end
  end
end
