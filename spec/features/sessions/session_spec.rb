require 'rails_helper'

RSpec.feature "Session Management", type: :feature do
  
  scenario "logs in a user" do 
  	visit sessions_new_path
  	fill_in 'name', with: "dude"
  	click_button 'login'
  	
  	expect(page).to have_text("Hi, dude")
  end	
  
end
