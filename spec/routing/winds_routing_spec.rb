require "rails_helper"

RSpec.describe WindsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/winds").to route_to("winds#index")
    end

    it "routes to #new" do
      expect(:get => "/winds/new").to route_to("winds#new")
    end

    it "routes to #show" do
      expect(:get => "/winds/1").to route_to("winds#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/winds/1/edit").to route_to("winds#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/winds").to route_to("winds#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/winds/1").to route_to("winds#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/winds/1").to route_to("winds#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/winds/1").to route_to("winds#destroy", :id => "1")
    end

  end
end
