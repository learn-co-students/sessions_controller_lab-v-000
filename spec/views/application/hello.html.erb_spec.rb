require 'rails_helper'

RSpec.describe 'application/hello.html.erb' do

  it 'displays login link when user not logged in' do
    render
    expect(rendered).to have_link("Log In", href: '/login')
  end
  
  it 'greets the user by name and displays logout button if user is logged in' do
    session[:name] = "Hedwig"
    render
    expect(rendered).to have_text("Hi, Hedwig.")
    expect(rendered).to have_selector("input[type=submit][value='logout']")
  end
  
end