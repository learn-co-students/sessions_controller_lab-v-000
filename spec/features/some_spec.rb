require 'rails_helper'

RSpec.describe "homepage/login", :type => :feature do
  it "shows a login link when not logged in" do
    visit '/'
    expect(page.body).to include 'login'
  end

  it "when logged in, greets user and has logout link" do
    visit '/login'
    fill_in 'name', with: 'Darko'
    click_button 'login'
    expect(page.body).to include 'Hi, Darko.'
    expect(page.body).to include 'logout'
  end
end
