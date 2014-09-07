require 'rails_helper'

RSpec.describe "instagram_arts/show", :type => :view do
  before(:each) do
    @instagram_art = assign(:instagram_art, InstagramArt.create!(
      :everything => "MyText",
      :image_url => "Image Url",
      :date_found => 1,
      :tags => "MyText",
      :caption => "MyText",
      :user_name => "User Name",
      :user_id => 2,
      :user_avatar => "User Avatar",
      :location_name => "Location Name",
      :location_lon => 1.5,
      :location_lat => 1.5,
      :location_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Image Url/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/User Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/User Avatar/)
    expect(rendered).to match(/Location Name/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/3/)
  end
end
