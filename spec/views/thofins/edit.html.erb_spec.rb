require 'rails_helper'

RSpec.describe "thofins/edit", type: :view do
  before(:each) do
    @thofin = assign(:thofin, Thofin.create!(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit thofin form" do
    render

    assert_select "form[action=?][method=?]", thofin_path(@thofin), "post" do

      assert_select "input#thofin_name[name=?]", "thofin[name]"

      assert_select "input#thofin_description[name=?]", "thofin[description]"
    end
  end
end
