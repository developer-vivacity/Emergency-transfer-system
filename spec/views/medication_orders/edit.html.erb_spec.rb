require 'rails_helper'

RSpec.describe "medication_orders/edit", type: :view do
  before(:each) do
    @medication_order = assign(:medication_order, MedicationOrder.create!())
  end

  it "renders the edit medication_order form" do
    render

    assert_select "form[action=?][method=?]", medication_order_path(@medication_order), "post" do
    end
  end
end
