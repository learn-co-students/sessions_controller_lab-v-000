require 'rails_helper'

RSpec.describe "homepage", :type => :view do
  it "displays a login link to a non-logged-in user" do
    visit '/'
    # fill_in 'product', with: 'kumquats'
    # click_button 'add to cart'
    expect(page.body).to include link_to(login_path)
  end

  it "displays a greeting and logout link to a logged-in user" do
  	session[:name] = "Dick Allen"
  	visit '/'
  	expect(page.body).to include "Hi, Dick Allen."
  	expect(page.body).to include form_tag({controller: 'sessions', action: 'destroy', method: 'post'})
  end
end

RSpec.describe "login page", :type => :view do
  it "displays a login form" do
  end

  it "redirects the user to the homepage upon login" do
  end

  it "redirects the user to the login page without a login name" do
  end
end
