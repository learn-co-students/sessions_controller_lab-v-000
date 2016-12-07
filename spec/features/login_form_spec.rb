require 'rails_helper'

describe 'login form for user' do
  it 'should create a new session when the form is submitted' do
    visit login_path

    fill_in 'name', with: 'Me'
    click_button('login')

    expect(page).to have_content("Me")
    click_button('logout')
  end
end
