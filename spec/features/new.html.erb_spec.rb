require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do
  describe "login successful" do
    it "redirects to hello page on login" do
      visit login_path
      fill_in "name", with: "clare"
      click_on "login"
      expect(current_path).to eq root_path
    end

    it "session[:name] is equal to name given" do
      visit login_path
      name = "clare"
      fill_in "name", with: name
      click_on "login"
      expect(current_path).to eq root_path
      expect(page).to have_content("Hi, clare")
    end

    it "redirects to login with no name" do
      visit login_path
      click_button "login"
      expect(current_path).to eq sessions_new_path
    end
  end
end
