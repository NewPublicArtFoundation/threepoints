require 'rails_helper'

RSpec.describe "instagram_arts/new", :type => :view do
  before(:each) do
    assign(:instagram_art, InstagramArt.new(
      :everything => "MyText",
      :image_url => "MyString",
      :date_found => 1,
      :tags => "MyText",
      :caption => "MyText",
      :user_name => "MyString",
      :user_id => "MyString",
      :user_avatar => "MyString",
      :location_name => "MyString",
      :location_lon => 1.5,
      :location_lat => 1.5,
      :location_id => "MyString",
      :image_id => "MyString"
    ))
  end

  it "renders new instagram_art form" do
    render

    assert_select "form[action=?][method=?]", instagram_arts_path, "post" do

      assert_select "textarea#instagram_art_everything[name=?]", "instagram_art[everything]"

      assert_select "input#instagram_art_image_url[name=?]", "instagram_art[image_url]"

      assert_select "input#instagram_art_date_found[name=?]", "instagram_art[date_found]"

      assert_select "textarea#instagram_art_tags[name=?]", "instagram_art[tags]"

      assert_select "textarea#instagram_art_caption[name=?]", "instagram_art[caption]"

      assert_select "input#instagram_art_user_name[name=?]", "instagram_art[user_name]"

      assert_select "input#instagram_art_user_id[name=?]", "instagram_art[user_id]"

      assert_select "input#instagram_art_user_avatar[name=?]", "instagram_art[user_avatar]"

      assert_select "input#instagram_art_location_name[name=?]", "instagram_art[location_name]"

      assert_select "input#instagram_art_location_lon[name=?]", "instagram_art[location_lon]"

      assert_select "input#instagram_art_location_lat[name=?]", "instagram_art[location_lat]"

      assert_select "input#instagram_art_location_id[name=?]", "instagram_art[location_id]"

      assert_select "input#instagram_art_image_id[name=?]", "instagram_art[image_id]"
    end
  end
end
