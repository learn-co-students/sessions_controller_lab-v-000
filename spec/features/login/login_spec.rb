require 'rails_helper'

describe "login",type: :feature do
   before do
     visit root_path 
   end
   
   it "has a link" do 
     expect(page).to have_link("login")
     click_link "login"
   end
   
   it "link leads to login form" do 
     click_link "login"
     expect(page).to have_content('name')
   end
   
   it 'redirects to login if empty form is submitted' do 
     click_link "login"
     fill_in("name", with: "")
     click_button "login"
     expect(page). to have_content('name')
   end
   
   it 'shows welcome if logged in' do 
     click_link "login"
     fill_in("name", with: "Ned")
     click_button "login"
     expect(page). to have_content('Hi, Ned')
   end
   
   it 'logout redirects to home page' do 
     click_link "login"
     fill_in("name", with: "Stan")
     click_button "login"
     click_button "logout"
     expect(page).to have_no_content('Hi')
   end
     
    
end