require 'rails_helper'

RSpec.describe "CurrentWinds", type: :request do
  describe "GET /current_winds" do
    it "works! (now write some real specs)" do
      get current_winds_path
      expect(response).to have_http_status(200)
    end
  end
end
