require 'rails_helper'

RSpec.describe "thofins/index", type: :view do
  before(:each) do
    assign(:thofins, [
      Thofin.create!(
        :name => "Name",
        :description => "Description"
      ),
      Thofin.create!(
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of thofins" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
