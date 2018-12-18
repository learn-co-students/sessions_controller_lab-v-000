require 'rails_helper'

RSpec.describe "application/hello", type: :view do

  it "shows login link if not logged in" do
    session[:name] = nil
    render :template => 'application/hello.html.erb'
    expect(rendered).to include '/login'
  end

  it "greets user by name if logged in" do
    session[:name] = 'Kitty'
    render
    expect(rendered).to include 'Hi, Kitty'
  end
end
