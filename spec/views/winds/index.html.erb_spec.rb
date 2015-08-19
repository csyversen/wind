require 'rails_helper'

RSpec.describe "winds/index", type: :view do
  before(:each) do
    assign(:winds, [
      Wind.create!(),
      Wind.create!()
    ])
  end

  it "renders a list of winds" do
    render
  end
end
