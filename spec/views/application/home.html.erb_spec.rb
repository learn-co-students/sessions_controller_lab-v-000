require 'rails_helper'

RSpec.describe "application/hello.html.erb", type: :view do
  before do
    session[:name] = "Ryan"
  end

  # if the user is logged in, the page should say, "hi, #{name}", and provide a logout link.
  it "greets user by name" do
    render
    expect(render).to include("Ryan")
  end

# if the user is logged in, the page should provide a logout link.
  it "shows a logout link if user is logged in" do
    render
    expect(render).to include('logout')
  end

end
