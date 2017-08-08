require 'rails_helper'

RSpec.describe "application/hello.html.erb", type: :view do
  before do
    session[:name] = "Fred"
  end

  it "greets a user by name" do
    render
    expect(rendered).to include 'Fred'
  end

  it "shows a logout button" do
    render
    expect(rendered).to include 'logout'
  end
end
