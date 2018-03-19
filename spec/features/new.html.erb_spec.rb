require 'rails_helper'


RSpec.describe "sessions/new.html.erb", type: :feature do

  it "includes a button to log in" do
    visit login_path
    expect(page).to have_button('login')
  end

  it "includes a field to enter a name" do
    visit login_path
    expect(page).to have_field("name")
  end

  before do
    visit login_path
    fill_in "name", with: "Moby"
    click_button "login"
  end

  it "greets the logged in user" do
      expect(page).to have_content("Hi, Moby")
  end

  it "redirects to the hello page" do
      expect(current_path).to eq(root_path)
  end

  it "redirects to the login page if a name isn't provided" do
    visit login_path
    click_button "login"
    expect(current_path).to eq(sessions_new_path)
  end


end
