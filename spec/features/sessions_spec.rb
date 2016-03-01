require 'rails_helper'

RSpec.describe SessionsController, :type => :feature do 
	it "logs in and displays hello page" do
		visit '/'
		
		fill_in 'name', with: 'Brett'
		click_on 'login'
		expect(page).to have_content('Brett')
	end

	it 'logs out and redirects to the home page' do
		visit '/'

		fill_in 'name', with: 'Brett'
		click_on 'login'
		click_on 'logout'
		expect(current_url).to eq("http://www.example.com/sessions/new")
	end
end