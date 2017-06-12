require "rails_helper"

RSpec.describe "home", :type => :view do
  it "displays a login link if user is not logged in" do
    visit root_path
    expect(page.body).to include 'login'
  end

  it "displays a logout link and text if user is logged in" do
    visit login_path
    fill_in 'name', with: 'Matt'
    click_button 'login'
    visit root_path
    expect(page).to have_selector("input[type=submit]")
  end

  it "displays username if user is logged in" do
    visit login_path
    fill_in 'name', with: 'Matt'
    click_button 'login'
    expect(page.body).to include 'Matt'
  end
end
