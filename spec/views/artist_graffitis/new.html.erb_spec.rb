require 'rails_helper'

RSpec.describe "artist_graffitis/new", :type => :view do
  before(:each) do
    assign(:artist_graffiti, ArtistGraffiti.new(
      :artist => nil,
      :graffiti => nil
    ))
  end

  it "renders new artist_graffiti form" do
    render

    assert_select "form[action=?][method=?]", artist_graffitis_path, "post" do

      assert_select "input#artist_graffiti_artist_id[name=?]", "artist_graffiti[artist_id]"

      assert_select "input#artist_graffiti_graffiti_id[name=?]", "artist_graffiti[graffiti_id]"
    end
  end
end
