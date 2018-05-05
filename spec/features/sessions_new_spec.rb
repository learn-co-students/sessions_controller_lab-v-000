require 'rails_helper'


RSpec.describe "sessions/new.html.erb", type: :view do
  describe 'login form' do 
  	it 'has input for name' do 
  		render
  		expect(rendered).to have_css("input[name='name']")
  	end 

  	it 'has a login button' do 
  		render
  		expect(rendered).to have_css("input[type='submit']")
  	end 

  	# it 'submits a post request to sessions#create' do 
  	# 	render 
  	# 	assign(:name, "Jay")# "name", with: "Jay"
  	# 	click_button "Login"
 
  	# 	expect(path).to be('/sessions/create')
  	# end 
  end 
end
