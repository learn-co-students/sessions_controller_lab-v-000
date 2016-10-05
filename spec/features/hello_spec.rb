require 'rails_helper'

RSpec.describe "Hello", type: :view do
  it "shows login page if not logged in" do
    visit '/'
    expect(page.body).to include 'login'
  end

  it "shows welcome page when logged in" do
    visit '/'
    fill_in 'name', with: 'bob'
    click_button 'login'
    expect(page.body).to include 'Hi, bob'
  end

  it "shows welcome page when logged in and renders logout button" do
    visit '/'
    fill_in 'name', with: 'bob'
    click_button 'login'
    expect(page.body).to include 'logout'
  end
end
