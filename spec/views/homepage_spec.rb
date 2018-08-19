require 'rails_helper'
require 'capybara/rspec'

RSpec.describe "application/hello", :type => :view do

  it "greets a user if they are logged in" do
    session[:name] = "chris"
    render
    expect(rendered).to include "Hi, #{session[:name]}."
  end

  it "has a logout link if user is logged in" do
    render
    expect(rendered).to match /logout/
  end

end
