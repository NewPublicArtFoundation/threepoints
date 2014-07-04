require 'rails_helper'

RSpec.describe "locations/edit", :type => :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      :city_name => "MyText",
      :country_name => "MyText",
      :address => "MyText",
      :longitude => 1.5,
      :latitude => 1.5
    ))
  end

  it "renders the edit location form" do
    render

    assert_select "form[action=?][method=?]", location_path(@location), "post" do

      assert_select "textarea#location_city_name[name=?]", "location[city_name]"

      assert_select "textarea#location_country_name[name=?]", "location[country_name]"

      assert_select "textarea#location_address[name=?]", "location[address]"

      assert_select "input#location_longitude[name=?]", "location[longitude]"

      assert_select "input#location_latitude[name=?]", "location[latitude]"
    end
  end
end
