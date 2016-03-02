require 'rails_helper'

RSpec.feature "Sessions", type: :feature do
  before(:each) do 
    visit '/login'
  end

  it "has a login button" do 
    expect(page).to have_button("login")
  end

  scenario 'username not entered' do 
    it "redirects to login page if not username entered" do 
      #fill in
      click_button("login")
      # expect(@request.session[:name]).to be_nil
      expect(current_url).to eq("http://www.example.com/login")
    end
  end

  scenario 'username entered' do 

    it "redirects root after loggin in" do 
      fill_in 'Name', with: "UserName"
      click_button("login")
      # expect(@request.session[:name]).to be_nil
      expect(current_url).to eq("http://www.example.com/")
    end

  end

  #fill in a value into form
  #click "login"
  #expect session[:name] == login value
end

# a home page or root route.
# if the user is not logged in, the page should show them a login link.
# if the user is logged in, the page should says, "hi, #{name}", and provide a logout link.
# 
#a login page
# users can enter their name in a form and click 'login'. Thereafter, the app will refer to them by that name.
# if the user does not enter a name, they are not logged in. Return them to the login page.
