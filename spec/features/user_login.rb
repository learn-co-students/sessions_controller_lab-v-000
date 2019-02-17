require 'rails_helper'

 describe "user login", type: :feature do
  before do
    visit "/"
    fill_in "name", with: "Dustin"
    click_button "login"
  end

   it "displays the name of the user on the page" do
    expect(page).to have_content("Dustin")
  end
end
     
