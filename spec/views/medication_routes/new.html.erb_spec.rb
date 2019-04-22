require 'rails_helper'

RSpec.describe "medication_routes/new", type: :view do
  before(:each) do
    assign(:medication_route, MedicationRoute.new(
      :name => "MyString"
    ))
  end

  it "renders new medication_route form" do
    render

    assert_select "form[action=?][method=?]", medication_routes_path, "post" do

      assert_select "input[name=?]", "medication_route[name]"
    end
  end
end
