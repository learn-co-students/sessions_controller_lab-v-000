require 'rails_helper'

describe "logging in and logging out" do
  describe "/" do
    context "when logged out" do
      it "displays log in link" do
        visit root_path
        expect(page).to have_link("Log In", href: login_path)
      end

      it "does not show welcome message" do
        visit root_path
        expect(page).not_to have_selector("h1", text: "Hi, ")
      end
    end

    context "when logged in" do
      before :each do
        @username = "username"

        visit login_path
        fill_in "name", with: @username
        click_button "login"
      end

      it "displays the user's name" do
        expect(page).to have_selector("h1", text: "Hi, #{@username}.")
      end

      it "displays log out link" do
        expect(page).to have_button("logout")
      end

      it "does not display log in link" do
        expect(page).not_to have_link("Log In", href: login_path)
      end
    end
  end
end

