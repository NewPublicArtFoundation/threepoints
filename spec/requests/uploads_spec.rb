require 'rails_helper'

RSpec.describe "Uploads", :type => :request do
  describe "GET /uploads" do
    it "works! (now write some real specs)" do
      get uploads_path
      expect(response.status).to be(200)
    end
  end
end
