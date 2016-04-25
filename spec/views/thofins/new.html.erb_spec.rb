require 'rails_helper'

RSpec.describe "thofins/new", type: :view do
  before(:each) do
    assign(:thofin, Thofin.new(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new thofin form" do
    render

    assert_select "form[action=?][method=?]", thofins_path, "post" do

      assert_select "input#thofin_name[name=?]", "thofin[name]"

      assert_select "input#thofin_description[name=?]", "thofin[description]"
    end
  end
end
