require 'rails_helper'

RSpec.feature "Homepage features", type: :feature do
  scenario "has a login button if a user is not logged in" do
    visit '/'

    page.should have_selector("input[type=submit][value='Login']")
  end

  scenario "after user logins, the homepage has their username on it" do
    visit '/'

    click_on 'Login'

    fill_in 'name', with: 'NewUser'

    click_on 'login'

    expect(page).to have_text('Hi, NewUser')
  end

  scenario "when a user is logged in, a logout button is displayed" do
    visit '/'

    click_on 'Login'

    fill_in 'name', with: 'NewUser'

    click_on 'login'

    page.should have_selector("input[type=submit][value='Logout']")
  end
end



# RSpec.feature "Widget management", :type => :feature do
#   scenario "User creates a new widget" do
#     visit "/widgets/new"
#

#     fill_in "Name", :with => "My Widget"
#     click_button "Create Widget"
#
#     expect(page).to have_text("Widget was successfully created.")
#   end
# end
