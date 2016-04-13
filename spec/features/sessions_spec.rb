require 'rails_helper'

RSpec.describe 'sessions/new.html.erb', type: :view do
  before do
    visit login_path
  end

  describe 'login page' do
    it 'has a field' do
      expect(page.body).to include('</form>')
    end
    it 'has a button' do
      expect(page.body).to include('login')
    end
    it 'puts field value on greeting page' do
      fill_in('name', with: 'STEVE HOLT')
      click_button('login')
      expect(page.body).to include('Hi, STEVE HOLT')
    end
    it 'has a logout button' do
      fill_in('name', with: 'STEVE HOLT')
      click_button('login')
      expect(page.body).to include('logout')
    end
    it 'logs the user out' do
      fill_in('name', with: 'STEVE HOLT')
      click_button('login')
      click_button('logout')
      expect(page.body).not_to include('STEVE HOLT')
    end
  end
end
