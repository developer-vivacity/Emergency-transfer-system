require 'rails_helper'

RSpec.describe "medication_orders/show", type: :view do
  before(:each) do
    @medication_order = assign(:medication_order, MedicationOrder.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
