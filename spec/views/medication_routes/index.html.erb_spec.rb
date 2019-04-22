require 'rails_helper'

RSpec.describe "medication_routes/index", type: :view do
  before(:each) do
    assign(:medication_routes, [
      MedicationRoute.create!(
        :name => "Name"
      ),
      MedicationRoute.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of medication_routes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
