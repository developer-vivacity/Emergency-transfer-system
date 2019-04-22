require 'rails_helper'

RSpec.describe "order_frequencies/edit", type: :view do
  before(:each) do
    @order_frequency = assign(:order_frequency, OrderFrequency.create!())
  end

  it "renders the edit order_frequency form" do
    render

    assert_select "form[action=?][method=?]", order_frequency_path(@order_frequency), "post" do
    end
  end
end
