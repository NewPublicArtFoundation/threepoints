require 'rails_helper'

RSpec.describe "InstagramArts", :type => :request do
  describe "GET /instagram_arts" do
    it "works! (now write some real specs)" do
      get instagram_arts_path
      expect(response.status).to be(200)
    end
  end
end
