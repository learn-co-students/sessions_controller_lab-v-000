require 'rails_helper'

RSpec.describe "application/hello.html.erb", type: :view do
 

  describe "welcome page logged in check", :type => :feature do

  # if the user is logged in, the page should says, "hi, #{name}", and provide a logout link.
   it "greets user if logged in" do
    visit '/login'
    fill_in 'name', :with => 'Bob Barker'
    click_button 'Login'
    visit '/'
    expect(page).to have_content 'Hi, Bob Barker.'
    expect(page.body).to include 'Logout'
  end

# if the user is logged in, the page should says, "hi, #{name}", and provide a logout link.
   it "it returns to login page if user does not enter a name" do
    visit '/'
    expect(page).to have_content 'Enter a name to login:'
  end
end
end
