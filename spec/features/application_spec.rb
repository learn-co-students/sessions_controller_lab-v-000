require 'rails_helper'

RSpec.describe "Home page" do
  it "shows a home page when logged in" do
    visit '/sessions/new'
      within("form") do
        fill_in 'name', with: 'kazumi'
      end
      click_button 'login'
    
    visit '/'
    expect(page).to have_content('Hi, kazumi.')
  end

  it "provides a logout link" do
    visit '/sessions/new'
    within("form") do
      fill_in 'name', with: 'kazumi'
    end
    click_button 'login'
    visit '/'
    expect(page).to have_selector(:link_or_button, 'logout')    
  end

  it "shows a login link when not logged in" do
    visit '/sessions/new'
    click_button 'login'
    expect(page).to have_selector(:link_or_button, 'login') 
  end
end




  
#       scenario "should be successful" do
#         within("form") do
#           fill_in 'Email', with: 'john.doe@example.com'
#         end
#         click_button 'Create User'
#         expect(page).to have_content 'User was successfully created.'
#       end
  
#       scenario "should fail" do
#         click_button 'Create User'
#         expect(page).to have_content 'Email can\'t be blank'
#       end
#     end

    # RSpec.describe "login", :type => :view do
    #   it "let a user login when a name submitted via its form" do
    #     visit ('login')
    #     fill_in 'name', with: 'Kazumi'
    #     click_button 'login'
    #     expect(page.body).to include 'Kazumi'
    #   end
    # end

    # RSpec.describe "Home page" do
    #   it "has a homepage" do
    #     visit '/'
    #     expect(page).to have_content('Hi')
    #   end
    # end