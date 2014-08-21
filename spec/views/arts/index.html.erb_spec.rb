require 'rails_helper'

RSpec.describe "arts/index", :type => :view do
  before(:each) do
    assign(:arts, [
      Art.create!(
        :description => "Description",
        :location_id => 1,
        :artist_id => 2,
        :slug => "Slug",
        :name => "Name"
      ),
      Art.create!(
        :description => "Description",
        :location_id => 1,
        :artist_id => 2,
        :slug => "Slug",
        :name => "Name"
      )
    ])
  end

  it "renders a list of arts" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
