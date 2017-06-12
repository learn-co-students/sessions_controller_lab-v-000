require 'rails_helper'

RSpec.describe 'login', type: :view do
  it "redirects to the login page if input is empty" do
    visit login_path
    fill_in 'name', with: ''
    click_button 'login'
    expect(current_path).to eq '/sessions/new'
  end

  it "allows the user to log in" do
    visit login_path
    fill_in 'name', with: 'Matt'
    click_button 'login'
    visit '/'
    expect(page.body).to include 'Matt'
  end
end
