require 'rails_helper'

RSpec.describe "order_frequencies/new", type: :view do
  before(:each) do
    assign(:order_frequency, OrderFrequency.new())
  end

  it "renders new order_frequency form" do
    render

    assert_select "form[action=?][method=?]", order_frequencies_path, "post" do
    end
  end
end
