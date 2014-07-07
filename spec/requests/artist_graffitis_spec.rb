require 'rails_helper'

RSpec.describe "ArtistGraffitis", :type => :request do
  describe "GET /artist_graffitis" do
    it "works! (now write some real specs)" do
      get artist_graffitis_path
      expect(response.status).to be(200)
    end
  end
end
