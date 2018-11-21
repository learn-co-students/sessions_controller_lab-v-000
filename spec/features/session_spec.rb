require 'rails_helper'

RSpec.feature "SessionsPages", type: :feature do
  describe "homepage", type: :view do
    before do
      session.delete :name
    end

    it "provides login link if user is not logged in" do
      visit '/'
      expect(page).to have_button("login")
    end

    it "greets user and provides logout link if user is logged in" do
      visit '/login'
      fill_in "name", with: "Chewy"
      click_button "login"

      expect(page).to have_content("Hi, Chewy.")
      expect(page).to have_button("logout")
    end
  end

  describe "login page", type: :view do
    before do
      session.delete :name
    end

    it "allows user to enter name in form and click 'login' and refers to user by name thereafter" do
      visit '/login'
      fill_in "name", with: "Bonkers"
      click_button "login"

      expect(page).to have_text("Bonkers")
    end

    it "redirects users to login page if no name is entered" do
      session.delete :name
      visit '/login'
      fill_in "name", with: ""
      click_button "login"

      expect(page).to have_current_path(login_path)
     end
  end
end
