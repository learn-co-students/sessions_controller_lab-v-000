require 'rails_helper'

RSpec.describe 'application/hello', type: :view do
  describe 'hello view' do
    it 'shows a login link if the user is not logged in' do
      if session[:name]
        session.delete :name
      end
      visit '/'
      expect(page).to have_content 'Login'
    end

    it 'greets the user if they are logged in' do
      if session[:name]
        session.delete :name
      end
      visit login_path
      fill_in 'name', with: 'Michael'
      click_button("login")
      expect(page).to have_content 'Hi, Michael.'
    end

    it 'provides the logout link if they are logged in' do
      visit login_path
      fill_in 'name', with: 'Michael'
      click_button("login")
      expect(page).to have_selector("input[type=submit]")
    end
  end
end
