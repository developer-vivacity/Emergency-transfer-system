require 'rails_helper'

RSpec.describe "order_frequencies/index", type: :view do
  before(:each) do
    assign(:order_frequencies, [
      OrderFrequency.create!(),
      OrderFrequency.create!()
    ])
  end

  it "renders a list of order_frequencies" do
    render
  end
end
