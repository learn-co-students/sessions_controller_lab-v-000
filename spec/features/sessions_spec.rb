require 'rails_helper'

feature 'User can sign in' do
  scenario 'User who is not logged in is directed to login page' do
    visit root_path

    expect(page).to have_link 'login'
  end

  scenario 'cannot login without a username' do
    visit login_path
    fill_in('name', with: "")
    click_on 'login'
    expect(page).to have_content "Must provide a name"
  end

  scenario 'logging in with username brings you to home page' do
    visit login_path
    fill_in('name', with: "Whatever")
    click_on 'login'
    expect(page).to have_content "Whatever"
  end

  scenario 'logout button redirects to login page' do
    visit login_path
    fill_in('name', with: "Whatever")
    click_on 'login'
    click_on 'logout'
    expect(page).to have_link 'login'
  end
end
