require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do
  describe 'login page' do
    it 'lets users enter their name in a form and click "login" and refers to them by name thereafter' do
      visit 'sessions/new'
      fill_in 'name', with: 'Joey'
      click_button 'login'
      expect(page.body).to include 'Joey'
    end

    it 'does not allow login if user does not enter a name, and returns to login page' do
      visit 'sessions/new'
      click_button 'login'
      expect(current_path).to eq '/sessions/new'
    end

  end
end
