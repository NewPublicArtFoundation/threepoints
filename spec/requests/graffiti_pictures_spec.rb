require 'rails_helper'

RSpec.describe "GraffitiPictures", :type => :request do
  describe "GET /graffiti_pictures" do
    it "works! (now write some real specs)" do
      get graffiti_pictures_path
      expect(response.status).to be(200)
    end
  end
end
