require 'rails_helper'

RSpec.describe "arts/new", :type => :view do
  before(:each) do
    assign(:art, Art.new(
      :description => "MyString",
      :location_id => 1,
      :artist_id => 1,
      :slug => "MyString",
      :name => "MyString"
    ))
  end

  it "renders new art form" do
    render

    assert_select "form[action=?][method=?]", arts_path, "post" do

      assert_select "input#art_description[name=?]", "art[description]"

      assert_select "input#art_location_id[name=?]", "art[location_id]"

      assert_select "input#art_artist_id[name=?]", "art[artist_id]"

      assert_select "input#art_slug[name=?]", "art[slug]"

      assert_select "input#art_name[name=?]", "art[name]"
    end
  end
end
