require 'rails_helper'

RSpec.describe "frequency_units/show", type: :view do
  before(:each) do
    @frequency_unit = assign(:frequency_unit, FrequencyUnit.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
