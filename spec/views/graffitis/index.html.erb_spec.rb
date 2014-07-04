require 'rails_helper'

RSpec.describe "graffitis/index", :type => :view do
  before(:each) do
    assign(:graffitis, [
      Graffiti.create!(
        :description => "MyText"
      ),
      Graffiti.create!(
        :description => "MyText"
      )
    ])
  end

  it "renders a list of graffitis" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
