require 'rails_helper'

RSpec.describe "frequency_units/index", type: :view do
  before(:each) do
    assign(:frequency_units, [
      FrequencyUnit.create!(
        :name => "Name"
      ),
      FrequencyUnit.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of frequency_units" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
