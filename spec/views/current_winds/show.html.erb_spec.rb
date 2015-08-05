require 'rails_helper'

RSpec.describe "current_winds/show", type: :view do
  before(:each) do
    @current_wind = assign(:current_wind, CurrentWind.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
