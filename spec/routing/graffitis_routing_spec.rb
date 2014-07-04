require "rails_helper"

RSpec.describe GraffitisController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/graffitis").to route_to("graffitis#index")
    end

    it "routes to #new" do
      expect(:get => "/graffitis/new").to route_to("graffitis#new")
    end

    it "routes to #show" do
      expect(:get => "/graffitis/1").to route_to("graffitis#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/graffitis/1/edit").to route_to("graffitis#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/graffitis").to route_to("graffitis#create")
    end

    it "routes to #update" do
      expect(:put => "/graffitis/1").to route_to("graffitis#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/graffitis/1").to route_to("graffitis#destroy", :id => "1")
    end

  end
end
