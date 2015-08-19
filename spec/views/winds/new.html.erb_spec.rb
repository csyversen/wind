require 'rails_helper'

RSpec.describe "winds/new", type: :view do
  before(:each) do
    assign(:wind, Wind.new())
  end

  it "renders new wind form" do
    render

    assert_select "form[action=?][method=?]", winds_path, "post" do
    end
  end
end
