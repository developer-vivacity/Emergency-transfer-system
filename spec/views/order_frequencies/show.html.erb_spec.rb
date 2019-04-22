require 'rails_helper'

RSpec.describe "order_frequencies/show", type: :view do
  before(:each) do
    @order_frequency = assign(:order_frequency, OrderFrequency.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
