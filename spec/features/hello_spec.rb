require 'rails_helper'

RSpec.feature "Hello", type: :feature do
  describe "/" do
    it "displays login link if user not logged in" do 
      visit root_path
      expect(page).to have_link("login", href: login_path)
    end
    it "should say hi 'name' and provide logout link" do
      visit login_path
      fill_in 'name', with: 'Aqua_man'
      click_button 'login'
      expect(page).to have_text("Hi, Aqua_man")
      expect(page). to have_button("logout")
    end
  end


end
