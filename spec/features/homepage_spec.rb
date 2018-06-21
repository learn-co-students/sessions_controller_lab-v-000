require 'rails_helper'

describe "Homepage Feature" do
  it 'shows the user a link if they are not logged in' do
    visit '/'

    expect(page).to have_link("Login")
  end

  it 'welcomes the user and shows them a logout link if logged in' do
    visit '/login'
    fill_in(:name, with: "Tom")
    click_button "login"

    expect(page).to have_content("Hi, Tom")
    expect(page).to have_button("logout")
  end

end
