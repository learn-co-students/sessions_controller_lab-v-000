require 'rails_helper'
require 'capybara/rspec'

describe "login function", :type => :feature do
  it "logs a user in" do
    visit '/login'
    fill_in :name, with: "peepopowitz"
    find('input[type="submit"]').click
    expect(page).to have_content("Hi, peepopowitz")
  end
end
