require 'rails_helper'

RSpec.describe "artist_graffitis/edit", :type => :view do
  before(:each) do
    @artist_graffiti = assign(:artist_graffiti, ArtistGraffiti.create!(
      :artist => nil,
      :graffiti => nil
    ))
  end

  it "renders the edit artist_graffiti form" do
    render

    assert_select "form[action=?][method=?]", artist_graffiti_path(@artist_graffiti), "post" do

      assert_select "input#artist_graffiti_artist_id[name=?]", "artist_graffiti[artist_id]"

      assert_select "input#artist_graffiti_graffiti_id[name=?]", "artist_graffiti[graffiti_id]"
    end
  end
end
