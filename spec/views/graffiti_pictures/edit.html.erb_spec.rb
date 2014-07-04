require 'rails_helper'

RSpec.describe "graffiti_pictures/edit", :type => :view do
  before(:each) do
    @graffiti_picture = assign(:graffiti_picture, GraffitiPicture.create!(
      :graffiti => nil,
      :image_url => "MyString",
      :image_description => "MyText",
      :location => nil
    ))
  end

  it "renders the edit graffiti_picture form" do
    render

    assert_select "form[action=?][method=?]", graffiti_picture_path(@graffiti_picture), "post" do

      assert_select "input#graffiti_picture_graffiti_id[name=?]", "graffiti_picture[graffiti_id]"

      assert_select "input#graffiti_picture_image_url[name=?]", "graffiti_picture[image_url]"

      assert_select "textarea#graffiti_picture_image_description[name=?]", "graffiti_picture[image_description]"

      assert_select "input#graffiti_picture_location_id[name=?]", "graffiti_picture[location_id]"
    end
  end
end
