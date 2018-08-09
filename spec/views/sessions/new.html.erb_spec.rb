require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :feature do
  scenario "has a form to enter name and a login button" do
    visit '/login'
    expect(page).to have_selector(:link_or_button, 'login')
    expect(page).to have_field(:name)
  end

  scenario "returns to login page if user tries logging in without name" do
    visit '/login'
    click_button "login"
    expect(page).to have_selector(:link_or_button, 'login')
  end
end
