require 'rails_helper'

RSpec.describe "login", :type => :feature do
  it "accepts a username submitted via its login form" do
    visit '/login'

    fill_in 'name', with: 'Harleigh'
    click_button 'login'
    expect(page.body).to include 'Harleigh'
  end
end
