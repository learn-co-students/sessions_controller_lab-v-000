require 'rails_helper'

RSpec.describe "application/hello.html.erb", type: :feature do
  it "if the user is not logged in, shows them a login link" do 
    visit "/"
    expect(page).to have_link("Log In", href: login_path)
  end
  
  it "if the user is logged in, greets the user by name" do 
    visit "/sessions/new"
    fill_in "name", with: "Dakota"
    click_button "Log In"
    expect(page).to have_content("Hi Dakota")
  end
  
  it "if the user is logged in, provides a logout link" do 
    visit "/sessions/new"
    fill_in "name", with: "Dakota"
    click_button "Log In"
    expect(page).to have_button("logout")
  end
  
end
