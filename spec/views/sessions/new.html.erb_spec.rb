require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :feature do
  it "has form to login a user" do
    visit sessions_new_path

    fill_in 'name', with: "Sav"
    click_button "login"
    expect(page).to have_text("Hi, Sav")
  end

  it "can logout a user" do
    visit sessions_new_path

    fill_in 'name', with: "Sav"
    click_button "login"

    click_button "logout"
    expect(page).to have_content("Login")
  end
end
