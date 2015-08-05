require 'rails_helper'

RSpec.describe "current_winds/edit", type: :view do
  before(:each) do
    @current_wind = assign(:current_wind, CurrentWind.create!())
  end

  it "renders the edit current_wind form" do
    render

    assert_select "form[action=?][method=?]", current_wind_path(@current_wind), "post" do
    end
  end
end
