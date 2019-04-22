require 'rails_helper'

RSpec.describe "medication_routes/show", type: :view do
  before(:each) do
    @medication_route = assign(:medication_route, MedicationRoute.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
