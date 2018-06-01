require 'rails_helper'

RSpec.describe "login page", :type => :feature do
  it "allows user to enter name and click button" do
    visit '/login'
    fill_in 'name', with: 'mike'
    click_button 'login'
  end

  it "redirects user to login page if field left blank" do
    visit '/login'
    click_button 'login'
    expect(page.body).to include 'Login'
  end
end
