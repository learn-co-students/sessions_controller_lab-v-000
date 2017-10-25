require 'rails_helper'

RSpec.feature "New features", type: :feature do
  scenario "shows a login form that submits content & redirects to homepage" do
    visit '/login'

    fill_in 'name', with: 'NewUser'

    click_on 'login'

    current_path.should == root_path
  end

  scenario "returns user to login form when the username field is left blank" do
    visit '/login'

    fill_in 'name', with: ''

    click_on 'login'

    current_path.should == login_path
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
