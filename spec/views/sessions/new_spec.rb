require 'rails_helper'
require 'pry'

RSpec.describe "sessions/new", type: :feature do
  context "logged out" do

    it "renders successfully" do
      visit login_path
      expect(page.status_code).to eq(200)
    end

    it "contains a form" do
      visit login_path
      expect(page).to have_css("form")
    end

    it "asks for a username,logs the user in, and redirects to the root index" do
      visit login_path

      fill_in 'name', with: "Aspen"
      click_on "login"

      expect(page).to have_content("Hi, Aspen")
      expect(page.current_path).to eq("/")
    end

  end

  context "logged in" do
    before do
      visit login_path

      fill_in 'name', with: "Aspen"
      click_on "login"
    end

    it "redirects to the root" do
      visit login_path

      expect(page.current_path).to eq('/')
    end
  end
end
