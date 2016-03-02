require 'rails_helper'

RSpec.feature "Sessions", type: :feature do

  scenario 'redirects if username not entered' do 
      visit '/login'
      click_button("login")
      expect(current_url).to eq("http://www.example.com/login")
  end

  scenario 'when username entered, redirects to root and shows username' do 
      visit '/login'
      fill_in 'name', with: "UserName"
      click_button("login")
      expect(current_url).to eq("http://www.example.com/")
      expect(page).to have_content "UserName"
  end

  scenario 'if the user is not logged in, root redirects to login link' do 
    visit '/'
    expect(current_url).to eq("http://www.example.com/login")
  end

  scenario 'if the user is logged in, root does not redirect' do 
    visit '/login'
    fill_in 'name', with: "UserName"
    click_button("login")

    visit '/'
    expect(current_url).to eq("http://www.example.com/")
  end
end

