require 'rails_helper'

RSpec.describe "login", type: :view do
  it "logs user out" do
    visit '/login'
    fill_in 'name', with: 'Abraham'
    click_button 'login'
    visit '/'
    click_button 'logout'
    visit '/'
    expect(page.body).not_to include 'Abraham'
  end
end
