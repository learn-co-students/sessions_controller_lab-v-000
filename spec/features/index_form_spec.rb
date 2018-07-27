require 'rails_helper'

RSpec.describe "sessions/index.html.erb", type: :feature do
  it 'renders properly' do
    visit root_url
    expect(page.status_code).to eq(200)
  end

  before do
    visit sessions_new_path
    fill_in "name", with: "Kriti"
    click_on "login"
  end

  it 'greets the user' do
    expect(page).to have_content("Hi, Kriti")
  end

  it 'allows the user to log out' do
    click_on 'Log Out'
  end

end
