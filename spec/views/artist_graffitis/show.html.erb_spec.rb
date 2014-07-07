require 'rails_helper'

RSpec.describe "artist_graffitis/show", :type => :view do
  before(:each) do
    @artist_graffiti = assign(:artist_graffiti, ArtistGraffiti.create!(
      :artist => nil,
      :graffiti => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
