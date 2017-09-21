require 'rails_helper'

RSpec.describe "application/hello.html.erb", type: :view do
  describe 'home page' do
    it 'shows a login link if the user is not logged in' do
      render
      expect(response.body).to have_link("Login", href: sessions_new_path)
    end

    it 'says "Hi, #{name}" if the user is logged in' do
      session[:name] = "Joey"
      render
      expect(response.body).to include("Hi, Joey")
    end

    it 'provides a logout link if the user is logged in' do
      session[:name] = "Joey"
      render
      expect(response.body).to have_button("logout")
    end
  end
end
