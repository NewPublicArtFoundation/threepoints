require "rails_helper"

RSpec.describe ArtistGraffitisController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/artist_graffitis").to route_to("artist_graffitis#index")
    end

    it "routes to #new" do
      expect(:get => "/artist_graffitis/new").to route_to("artist_graffitis#new")
    end

    it "routes to #show" do
      expect(:get => "/artist_graffitis/1").to route_to("artist_graffitis#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/artist_graffitis/1/edit").to route_to("artist_graffitis#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/artist_graffitis").to route_to("artist_graffitis#create")
    end

    it "routes to #update" do
      expect(:put => "/artist_graffitis/1").to route_to("artist_graffitis#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/artist_graffitis/1").to route_to("artist_graffitis#destroy", :id => "1")
    end

  end
end
