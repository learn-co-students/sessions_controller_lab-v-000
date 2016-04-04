require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :feature do
  it "redirects to the login page if there is no name submitted" do
    visit sessions_new_path
    click_button "Log In"
    expect(page.current_path).to eq(sessions_new_path)
  end
  
  it "greets the user by name after successfully logging in" do
    visit sessions_new_path
    fill_in 'name', with: "dakota"
    click_button "Log In"
    expect(page.current_path).to eq(root_path)
    expect(page).to have_content("Hi dakota")
  end
end
