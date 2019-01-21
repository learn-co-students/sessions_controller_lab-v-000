require 'rails_helper'

RSpec.describe "application/hello", :type => :view do
  it "shows a login link if not logged in" do
    session[:name] = nil
    render
    expect(rendered).to include '/login'
  end

  it "greets the user by name if logged in" do
    session[:name] = 'Bob'
    render
    expect(rendered).to include 'Hi, Bob.'
  end
end
