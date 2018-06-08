require 'rails_helper'

describe 'homepage', type: :feature do
  context 'Logged out' do
    it "has a login link" do
      visit '/'

      expect(page).to have_link("Login", href: login_path)
    end
  end

  context 'Logged in' do
    before do
      visit login_path 

      fill_in 'name', with: "Aspen"
      click_on "login"
    end

    it "greets the user" do
      visit '/'

      expect(page).to have_content("Hi, Aspen")
    end

    it "has a logout link" do
      visit '/'

      expect(page).to have_button(type: "submit", value: "logout")
    end

  end
end
