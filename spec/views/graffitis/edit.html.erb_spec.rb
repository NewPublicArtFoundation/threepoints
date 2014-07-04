require 'rails_helper'

RSpec.describe "graffitis/edit", :type => :view do
  before(:each) do
    @graffiti = assign(:graffiti, Graffiti.create!(
      :description => "MyText"
    ))
  end

  it "renders the edit graffiti form" do
    render

    assert_select "form[action=?][method=?]", graffiti_path(@graffiti), "post" do

      assert_select "textarea#graffiti_description[name=?]", "graffiti[description]"
    end
  end
end
