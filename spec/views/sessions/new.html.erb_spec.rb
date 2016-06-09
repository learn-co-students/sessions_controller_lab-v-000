require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :feature do
  # pending "add some examples to (or delete) #{__FILE__}"

  context "title" do
    it "says 'Enter your username to login'" do
      visit '/sessions/new'
      expect(page).to have_content('Enter your username to login')
    end
  end

  context "user navigation" do
    it 'submits a username' do
      visit '/sessions/new'
      fill_in('name', :with => 'John')
      click_button 'login'
      expect(page).to have_content('John')
    end
  end
end
