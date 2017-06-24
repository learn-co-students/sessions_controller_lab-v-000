require 'rails_helper'

RSpec.describe "homepage", :type => :view do

  it "greets user if they are logged on" do
    visit '/login'
    fill_in 'name', with: 'user1'
    click_button 'login'
    expect(page.body).to include 'Hi, user1'
  end

  it "shows a login link of the user is not logged on" do   	
    visit '/login'
    fill_in 'name', with: 'user1'
    click_button 'login'
    expect(page.body).to include 'logout'
    click_button 'logout'
    expect(page.body).to include 'Login'
  end
end
