#require 'rails_helper'
# a home page or root route. _ if the user is not logged in, the page should show
#them a login link. _ if the user is logged in, the page should say, "hi, #{name}", and provide a logout link.

# a login page _ users can enter their name in a form and click 'login'. Thereafter, the app will refer
#to them by that name. _ if the user does not enter a name, they are not logged in.
# Return them to the login page.

#RSpec
describe "homepage", :type => :feature do

  it "if the user is not logged in, the page should show them a login link" do
    visit root_path

    expect(page.body).to have_link("login", href: login_path)
  end

  it "if the user logged in, the page should greet them and let them logout" do
    visit  login_path
    fill_in 'name', with: 'potato salad jimmy'
    click_button 'login'

    #session[:name] = "potato salad jimmy"
    visit root_path

    expect(page).to have_text("Hi, potato salad jimmy")
    expect(page.body).to include "logout"
  end
end

describe "login page", :type => :feature do

  it "if user doesn't enter name it reloads the login page" do
    visit  login_path
    fill_in 'name', with: ""
    click_button 'login'

    expect(page.body).to include "login"

  end
end
