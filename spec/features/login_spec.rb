require 'rails_helper'

describe 'home page' do
  it 'shows the login page if not logged in' do
    visit '/'
    expect(page).to have_field("name")
  end

  it 'greets the user if logged in' do
    visit '/'
    fill_in 'name', with: "namey"
    click_button 'login'
    expect(page).to have_content("Hi, namey.")
  end

  it 'has a logout link if logged in' do
    visit '/'
    fill_in 'name', with: "namora"
    click_button 'login'
    expect(page).to have_button('logout')
  end
end
