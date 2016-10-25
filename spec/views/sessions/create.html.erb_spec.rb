require 'rails_helper'
# require 'capybara/rspec'
# require 'capybara/dsl'

RSpec.configure do |config|
#   config.include Rack::Test::Methods
  config.include Capybara::DSL
end

# def app
#   Rack::Builder.parse_file('config.ru').first
# end

# Capybara.ignore_hidden_elements = false
# Capybara.app = app



RSpec.describe "sessions/create.html.erb", type: :view do
	it 'displays a login form if not logged in' do
		visit login_path
		expect(page).to have_css("form[method='post'][action*='#{login_path}']")
		expect(page).to have_css("input[name='name']")
		expect(page).to have_css("input[type='submit'][value='login']")
	end

	it 'redisplay the login form if the user clicks the login button without entering a name' do
		visit login_path
		click_button 'login'
		expect(page).to have_css("form[method='post'][action*='#{login_path}']")
		expect(page).to have_css("input[name='name']")
		expect(page).to have_css("input[type='submit'][value='login']")
	end
end
