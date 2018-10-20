
require 'rails_helper'
include Capybara::DSL



RSpec.describe "login", :type => :view do
  it "adds users name to session cookie" do 
    visit '/login'  
      fill_in 'name', with: "Bobby"
      click_button 'login'
      expect(page.body).to include 'Bobby'
    end 
end

