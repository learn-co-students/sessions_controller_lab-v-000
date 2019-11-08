require 'rails_helper'

RSpec.describe "login", type: :view do
  it "logs user in" do
    visit '/login'
    fill_in 'name', with: 'Abraham'
    click_button 'login'
    visit '/'
    expect(page.body).to include 'Abraham'
  end
end
