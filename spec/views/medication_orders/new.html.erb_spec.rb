require 'rails_helper'

RSpec.describe "medication_orders/new", type: :view do
  before(:each) do
    assign(:medication_order, MedicationOrder.new())
  end

  it "renders new medication_order form" do
    render

    assert_select "form[action=?][method=?]", medication_orders_path, "post" do
    end
  end
end
