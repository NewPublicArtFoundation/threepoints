require 'rails_helper'

RSpec.describe "artist_graffitis/index", :type => :view do
  before(:each) do
    assign(:artist_graffitis, [
      ArtistGraffiti.create!(
        :artist => nil,
        :graffiti => nil
      ),
      ArtistGraffiti.create!(
        :artist => nil,
        :graffiti => nil
      )
    ])
  end

  it "renders a list of artist_graffitis" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
