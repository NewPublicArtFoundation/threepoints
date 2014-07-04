require 'rails_helper'

RSpec.describe "graffiti_pictures/show", :type => :view do
  before(:each) do
    @graffiti_picture = assign(:graffiti_picture, GraffitiPicture.create!(
      :graffiti => nil,
      :image_url => "Image Url",
      :image_description => "MyText",
      :location => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Image Url/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
