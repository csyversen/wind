require 'rails_helper'

RSpec.describe "winds/show", type: :view do
  before(:each) do
    @wind = assign(:wind, Wind.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
