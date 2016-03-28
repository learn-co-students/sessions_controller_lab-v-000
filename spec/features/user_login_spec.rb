require 'rails_helper'

describe "User Login", type: :feature do
  before do 
    visit root_path
  end

  it "displays a login link" do 
    expect(page).to have_link("Login")
    click_link "Login"
  end 

  it 'redirects if not logged in, then presents a login form' do
    click_link "Login"
    fill_in "name", with: "Steve"
    click_button "login"
  end

  it 'returns to login if no name entered' do
    click_link "Login"
    fill_in "name", with: ''
    click_button "login"
    expect(current_path).to eq(sessions_new_path)
  end


  it "displays the user's name" do
    click_link "Login"
    fill_in "name", with: "Steve"
    click_button "login"
    expect(page).to have_content("Hi, Steve")
  end

end


