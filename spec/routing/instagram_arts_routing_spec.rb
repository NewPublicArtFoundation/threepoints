require "rails_helper"

RSpec.describe InstagramArtsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/instagram_arts").to route_to("instagram_arts#index")
    end

    it "routes to #new" do
      expect(:get => "/instagram_arts/new").to route_to("instagram_arts#new")
    end

    it "routes to #show" do
      expect(:get => "/instagram_arts/1").to route_to("instagram_arts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/instagram_arts/1/edit").to route_to("instagram_arts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/instagram_arts").to route_to("instagram_arts#create")
    end

    it "routes to #update" do
      expect(:put => "/instagram_arts/1").to route_to("instagram_arts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/instagram_arts/1").to route_to("instagram_arts#destroy", :id => "1")
    end

  end
end
