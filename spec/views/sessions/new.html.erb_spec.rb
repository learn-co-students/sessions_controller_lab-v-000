require 'rails_helper'

RSpec.describe "home", type: :view do
  
  it "directs user to log in if not logged in as user" do
      session[:name] = ""
      visit '/'
      expect(page.body).to include "login"
  end
      
  it "greets a user if logged in" do
      visit '/login'
      fill_in "name", :with => "Ted"
      click_button "login"
      expect(page.body).to include "Hi, Ted"
  end 

end
