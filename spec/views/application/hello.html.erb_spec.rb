require 'rails_helper'

RSpec.describe "application/hello.html.erb", type: :feature do
  scenario "greets the logged-in user and shows logout link" do
    test_name = "We are testing here"
    # @request.session[:name] = test_name
    visit '/login'
    fill_in "name", with: test_name
    click_button "login"
    expect(page).to have_text('Hi,')
    expect(page).to have_selector(:link_or_button, 'logout')
  end

  scenario "shows the login link instead of greeting if not logged in" do
    visit '/'
    expect(page).to have_selector(:link_or_button, 'login')
  end
end
