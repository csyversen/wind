require 'rails_helper'

RSpec.describe "winds/edit", type: :view do
  before(:each) do
    @wind = assign(:wind, Wind.create!())
  end

  it "renders the edit wind form" do
    render

    assert_select "form[action=?][method=?]", wind_path(@wind), "post" do
    end
  end
end
