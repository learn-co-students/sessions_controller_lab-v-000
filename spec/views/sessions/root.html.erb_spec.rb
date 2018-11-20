require 'rails_helper'

RSpec.describe "application/hello", type: :view do

  it 'displays your name if you are signed in' do
    session[:name] = "Micah"
    render
    expect(rendered).to include("Hi, #{session[:name]}")

       
  end

  it 'displays a login link if you are not signed in' do
    session[:name] = nil
    render
    expect(rendered).to have_link("Login")
  end
end
