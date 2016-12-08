require 'rails_helper'

describe "home page" do
  it 'should have a login link if user is not logged in' do
    visit root_path

    expect(page).to have_button("login")
  end

  it 'should welcome the user by name if user is logged in' do
    visit root_path

    click_button("login")

    fill_in 'name', with: 'Me'
    click_button('login')

    expect(page).to have_content("Me")
    click_button('logout')
  end
end
