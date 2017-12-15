require 'rails_helper'

RSpec.describe "home", type: :view do
  it "greets a user if logged in" do
    visit "/login"
    fill_in "name", :with => "Sam"
    click_button "login"
    expect(page.body).to include "Hi, Sam."
  end

  it "redirects a user to login if not logged in" do
    session[:name] = ""
    visit "/"
    expect(page.body).to include "login"
  end
end
