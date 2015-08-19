require 'rails_helper'

RSpec.describe "Winds", type: :request do
  describe "GET /winds" do
    it "works! (now write some real specs)" do
      get winds_path
      expect(response).to have_http_status(200)
    end
  end
end
