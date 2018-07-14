require 'rails_helper'

RSpec.describe "homepage" do
  it "links to /login if not logged in" do
    visit '/'
    expect(page).to have_link(nil, href: '/login')
  end
  
  it "greets user if logged in" do
    visit '/login'
    fill_in 'name', with: 'John Doe'
    click_on 'login'
    
    expect(page).to have_content('John Doe')
  end
end