require 'rails_helper'

RSpec.describe "current_winds/new", type: :view do
  before(:each) do
    assign(:current_wind, CurrentWind.new())
  end

  it "renders new current_wind form" do
    render

    assert_select "form[action=?][method=?]", current_winds_path, "post" do
    end
  end
end
