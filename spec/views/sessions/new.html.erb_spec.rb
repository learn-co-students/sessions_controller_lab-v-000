require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do

describe "the signin process", :type => :feature do

  # users can enter their name in a form and click 'login'. Thereafter, the app will refer to them by that name.
   it "it signs in if user enters a name" do
    visit '/login'
    
      fill_in 'name', :with => 'Bob Barker'
  
    click_button 'Login'
    expect(page).to have_content 'Hi, Bob Barker.'
    expect(page.body).to include 'Logout'
  end

  # if the user does not enter a name, they are not logged in. Return them to the login page.
   it "it returns to login page if user does not enter a name" do
    visit 'login'
    fill_in 'name', :with => ''
    click_button 'Login'
    expect(page).to have_content 'Enter a name to login:'
  end
end

end
