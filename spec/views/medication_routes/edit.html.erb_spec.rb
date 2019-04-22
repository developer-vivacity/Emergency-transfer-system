require 'rails_helper'

RSpec.describe "medication_routes/edit", type: :view do
  before(:each) do
    @medication_route = assign(:medication_route, MedicationRoute.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit medication_route form" do
    render

    assert_select "form[action=?][method=?]", medication_route_path(@medication_route), "post" do

      assert_select "input[name=?]", "medication_route[name]"
    end
  end
end
