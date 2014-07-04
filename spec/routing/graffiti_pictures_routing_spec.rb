require "rails_helper"

RSpec.describe GraffitiPicturesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/graffiti_pictures").to route_to("graffiti_pictures#index")
    end

    it "routes to #new" do
      expect(:get => "/graffiti_pictures/new").to route_to("graffiti_pictures#new")
    end

    it "routes to #show" do
      expect(:get => "/graffiti_pictures/1").to route_to("graffiti_pictures#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/graffiti_pictures/1/edit").to route_to("graffiti_pictures#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/graffiti_pictures").to route_to("graffiti_pictures#create")
    end

    it "routes to #update" do
      expect(:put => "/graffiti_pictures/1").to route_to("graffiti_pictures#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/graffiti_pictures/1").to route_to("graffiti_pictures#destroy", :id => "1")
    end

  end
end
