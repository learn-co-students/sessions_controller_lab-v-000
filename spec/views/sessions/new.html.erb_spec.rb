require 'rails_helper'

RSpec.describe 'root path display', :type => :feature do

  it 'displays the login screen if the user is not logged in' do
    visit '/'
    expect(page).to have_button('login')
  end

  it 'displays the welcome screen when the user logs in' do
    username = 'JP'
    visit '/'
    fill_in('name', :with => username)
    click_button('login')
    expect(page).to have_content("Hi, #{username}")
  end

  it 'allows a logged in user to log out' do
    username = 'JP'
    visit '/'
    fill_in('name', :with => username)
    click_button('login')
    expect(page).to have_button('logout')
  end
end
