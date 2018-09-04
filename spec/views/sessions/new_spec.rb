require 'rails_helper'

feature 'Add a login' do
  scenario 'able to login and show user' do
    visit '/'
    click_link '/login'
    fill_in 'name', with: 'Tim'
    click_button 'login'
    expect(page).to have_content('Tim')
  end
end 
