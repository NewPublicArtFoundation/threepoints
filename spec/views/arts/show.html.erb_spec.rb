require 'rails_helper'

RSpec.describe "arts/show", :type => :view do
  before(:each) do
    @art = assign(:art, Art.create!(
      :description => "Description",
      :location_id => 1,
      :artist_id => 2,
      :slug => "Slug",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/Name/)
  end
end
