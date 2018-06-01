require 'rails_helper'



RSpec.describe "homepage", :type => :feature do
  it "shows a login link if the user is not logged in" do
    visit '/'
    expect(page.body).to include 'Login'
  end

  it "greets the user if logged in and has logout button" do
    visit '/login'
    fill_in 'name', with: 'mike'
    click_button 'login'
    visit '/'
    expect(page.body).to include 'Hi, mike.'
    click_button 'logout'
  end

end
