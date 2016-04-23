require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do
  
  it "logs in a user" do 
    visit sessions_new_path
    fill_in 'name', with: "dude"
    click_button 'login'
    
    expect(page).to have_content("dude")
  end   
  
end