require 'rails_helper'
# require 'capybara/rspec'
# require 'capybara/dsl'

RSpec.configure do |config|
#   config.include Rack::Test::Methods
  config.include Capybara::DSL
end

describe 'application/hello' do

	it 'displays a link to login if not logged in' do
		visit root_path
		expect(page).to have_link('Login', login_path)
	end

	it 'welcomes the user if logged in' do
		visit login_path
  		fill_in("name", with: "Tabby")
  		click_button 'login'
  		expect(page.body).to include("Welcome, Tabby!")
		visit root_path
		expect(page.body).to include("Hi, Tabby.")
	end

end