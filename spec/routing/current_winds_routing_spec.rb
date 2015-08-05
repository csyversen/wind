require "rails_helper"

RSpec.describe CurrentWindsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/current_winds").to route_to("current_winds#index")
    end

    it "routes to #new" do
      expect(:get => "/current_winds/new").to route_to("current_winds#new")
    end

    it "routes to #show" do
      expect(:get => "/current_winds/1").to route_to("current_winds#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/current_winds/1/edit").to route_to("current_winds#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/current_winds").to route_to("current_winds#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/current_winds/1").to route_to("current_winds#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/current_winds/1").to route_to("current_winds#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/current_winds/1").to route_to("current_winds#destroy", :id => "1")
    end

  end
end
