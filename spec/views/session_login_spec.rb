require 'rails_helper'

RSpec.describe 'session/login', type: :view do
  describe 'login view' do
    it 'shows a login link if the user is not logged in' do
      if session[:name]
        session.delete :name
      end
      visit login_path
      fill_in 'name', with: 'Michael'
      click_button("login")
      expect(page).to have_content 'Michael'
    end

    it 'returns a user to the login page if they do not enter a name before clicking "login"' do
      if session[:name]
        session.delete :name
      end
      visit login_path
      click_button("login")
      expect(page).to have_content 'Login'
    end
  end
end
