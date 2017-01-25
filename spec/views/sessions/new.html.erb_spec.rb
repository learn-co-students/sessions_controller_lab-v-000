require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :feature do

  describe 'Welcomes user' do
    it 'greets the logged in user by name' do
      visit '/login'
      fill_in 'name', :with => 'Adam'
      click_button 'login'
      expect(page).to have_text('Hi, Adam')
    end
  end
end
