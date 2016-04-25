require "rails_helper"

RSpec.feature "Users can create new tags" do
  scenario "with valid attributes" do
    visit "/tags/"
    
    click_link "New Tag"
    
    fill_in "Name", with: "Perception"
    click_button "Create Tag"
    
    expect(page).to have_content "Tag created"
  end
end
    