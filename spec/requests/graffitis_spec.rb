require 'rails_helper'

RSpec.describe "Graffitis", :type => :request do
  describe "GET /graffitis" do
    it "works! (now write some real specs)" do
      get graffitis_path
      expect(response.status).to be(200)
    end
  end
end
