require 'rails_helper'

RSpec.describe "sessions", type: :feature do

  it "shows a login link if user is not logged in" do
    visit '/login'
    expect(page).to have_button("login")
  end

  it "displays a user's welcome page after logging in" do
    visit '/login'
    fill_in "name", with: "Harry"
    click_button "login"
    expect(page).to have_text("Hi, Harry")
    expect(page).to have_button("logout")
  end

end
