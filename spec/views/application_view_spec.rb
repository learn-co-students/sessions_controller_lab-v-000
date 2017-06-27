require 'rails_helper'

RSpec.describe "application/hello", type: :feature do
	it 'display login form if user NOT loged in' do
		visit root_path

		expect(current_path).to eq(login_path) 
		expect(page).to have_content("Login")
	end

	it 'display hello page with logout if user loged in' do
		visit root_path
		fill_in 'name', with: "David"
		click_on "login"

		expect(current_path).to eq(root_path)
		expect(page).to have_content("David")
	end
end
