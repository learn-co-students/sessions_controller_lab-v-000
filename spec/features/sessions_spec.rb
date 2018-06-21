require 'rails_helper'

describe 'Sessions Features' do
  context 'login interface' do
    it 'renders a view with a form with a name text field' do
      visit '/'
      click_link "Login"

      expect(page.status_code).to eq(200)
      expect(page).to have_selector('form')
      expect(page).to have_field(:name)
    end

    it 'submits a form and logs a user in and redirects them to the homepage' do
      visit '/login'
      fill_in(:name, with: 'Emily')
      click_button 'login'

      expect(page.current_path).to eq('/')
      expect(page).to have_content("Hi, Emily")
    end

    it 'returns a user to the login page if the form submission is not valid' do
      visit '/login'
      click_button 'login'

      expect(page.current_path).to include('/login')
      expect(page).to have_content("You must enter a name to login.")
    end
  end

  context 'logout interface' do
    before do
      visit '/login'
      fill_in(:name, with: 'Emily')
      click_button 'login'
    end

    it 'logs a user out of the application by clearing the session hash and returns them to the homepage page' do
      visit '/'
      click_button "logout"

      expect(page.current_path).to eq("/")
      expect(page).to have_link("Login")
    end
  end

end
