require 'rails_helper'
require 'capybara/rspec'

RSpec.describe "homepage", :type => :feature do
  it "greets the user if logged in" do
    visit 'login'
    fill_in('name', :with=>'test_user')
    click_button 'login'
    page.should have_content("Hi, test_user.")
  end

  it "redirect to login page if not logged in" do
    visit '/'
    page.should have_css("#login")
  end
end