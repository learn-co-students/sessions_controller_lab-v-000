require 'rails_helper'
require 'capybara/rspec'

describe "user logs in", type: :feature do

  before do
    visit login_path
    # fill_in "name", with: "Dill"
    # click_button "login"
  end



end