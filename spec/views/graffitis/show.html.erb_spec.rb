require 'rails_helper'

RSpec.describe "graffitis/show", :type => :view do
  before(:each) do
    @graffiti = assign(:graffiti, Graffiti.create!(
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
