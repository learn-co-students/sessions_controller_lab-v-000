require 'rails_helper'
require 'capybara/rspec'

describe "a good login", type: :feature do
  before do
    reset_session!
    visit login_path
    fill_in :name, with: 'Pip'
    click_button "Login"
  end

  # it "creates session hash on successful login" do
  #   expect(page.get_rack_session_key('name')).to_not be_nil
  # end

  it "allows the user to log in with a correct username" do
    expect(page).to have_content("Hi, Pip.")
  end
end

describe "a bad login", type: :feature do
  before do
    reset_session!
    visit login_path
    fill_in :name, with: NIL
    click_button "Login"
  end

  it "redirects to login if submission is blank" do
    expect(page).to have_content("Login")
  end
end