require 'rails_helper'

RSpec.describe "graffiti_pictures/index", :type => :view do
  before(:each) do
    assign(:graffiti_pictures, [
      GraffitiPicture.create!(
        :graffiti => nil,
        :image_url => "Image Url",
        :image_description => "MyText",
        :location => nil
      ),
      GraffitiPicture.create!(
        :graffiti => nil,
        :image_url => "Image Url",
        :image_description => "MyText",
        :location => nil
      )
    ])
  end

  it "renders a list of graffiti_pictures" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
