require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :feature do
  scenario 'user logs in' do
  	visit login_path

  	fill_in "name", with: 'Dovid'
  	click_button "login"

  	expect(page).to have_text('Hi')
  end
end
