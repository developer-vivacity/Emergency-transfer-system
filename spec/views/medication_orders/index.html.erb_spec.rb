require 'rails_helper'

RSpec.describe "medication_orders/index", type: :view do
  before(:each) do
    assign(:medication_orders, [
      MedicationOrder.create!(),
      MedicationOrder.create!()
    ])
  end

  it "renders a list of medication_orders" do
    render
  end
end
