require 'rails_helper'

RSpec.describe "current_winds/index", type: :view do
  before(:each) do
    assign(:current_winds, [
      CurrentWind.create!(),
      CurrentWind.create!()
    ])
  end

  it "renders a list of current_winds" do
    render
  end
end
