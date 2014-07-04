require 'rails_helper'

RSpec.describe "graffitis/new", :type => :view do
  before(:each) do
    assign(:graffiti, Graffiti.new(
      :description => "MyText"
    ))
  end

  it "renders new graffiti form" do
    render

    assert_select "form[action=?][method=?]", graffitis_path, "post" do

      assert_select "textarea#graffiti_description[name=?]", "graffiti[description]"
    end
  end
end
