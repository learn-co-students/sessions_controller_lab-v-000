require 'rails_helper'

RSpec.feature "Login", type: :feature do
  context 'login' do
    before(:each) do
      visit '/sessions/new'
      within("form") do
        fill_in 'name', with: 'kazumi'
      end
      click_button 'login'
    end

      it "can login" do
        visit '/'
        expect(page).to have_content('Hi, kazumi.')
      end
  end
end
