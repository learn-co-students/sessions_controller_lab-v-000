require 'rails_helper'

RSpec.describe "application/hello", :type => :view do
  # before do
  #   session[:name] = "Katrina"
  #   name = session[:name]
  #
  # end
  it "displays a welcome message if the user is logged in" do
    # visit 'application/hello'
    session[:name] = "Katrina"
    name = session[:name]
    render
    expect(rendered).to include "Hi, "
    expect(rendered).to include name
  end

  # it "has a logout button that deletes the current user's session" do
  #   session.clear
  #   render
  #   rendered.should have_submit_button("logout")
  #
  # end
  #
  # it "has a login button that takes the user to the login form if not logged in" do
  #   visit '/'
  #   fill_in 'product', with: 'kumquats'
  #   click_button 'add to cart'
  #   expect(page.body).to include 'kumquats'
  # end
end
