require 'rails_helper'

# RSpec.describe "homepage", :type => :view do
#   it "adds items to the cart when they're submitted via its form" do
#     visit '/'
#     fill_in 'product', with: 'kumquats'
#     click_button 'add to cart'
#     expect(page.body).to include 'kumquats'
#   end
# end

describe "homepage", type: :feature do
  before do
    visit '/'
  end
  it "redirects you to the login page if not logged in" do
    expect(page).to have_button('login')
  end
end

# describe "homepage", type: :feature do
#   before do
#     @request.session[:name] = "Bob"
#     visit '/'
#   end
#   it "takes you to the main page if logged in" do
#     expect(page).to have_content("Hi, Bob")
#   end
# end
