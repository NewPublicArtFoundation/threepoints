require 'rails_helper'

RSpec.describe "instagram_arts/index", :type => :view do
  before(:each) do
    assign(:instagram_arts, [
      InstagramArt.create!(
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
      ),
      InstagramArt.create!(
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
      )
    ])
  end

  it "renders a list of instagram_arts" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "User Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "User Avatar".to_s, :count => 2
    assert_select "tr>td", :text => "Location Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
