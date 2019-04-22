require 'rails_helper'

RSpec.describe "frequency_units/edit", type: :view do
  before(:each) do
    @frequency_unit = assign(:frequency_unit, FrequencyUnit.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit frequency_unit form" do
    render

    assert_select "form[action=?][method=?]", frequency_unit_path(@frequency_unit), "post" do

      assert_select "input[name=?]", "frequency_unit[name]"
    end
  end
end
