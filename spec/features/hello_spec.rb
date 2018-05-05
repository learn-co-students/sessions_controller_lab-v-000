require 'rails_helper'


RSpec.describe "application/hello.html.erb", type: :view do
  describe 'login form' do 
  	it 'has a login button if not logged in' do 
  		render
  		expect(rendered).to have_css("input[value='Login']")
  	end 

  	it 'says hi #{name} if logged in' do 
  		session[:name] = "Jay"
  		render 
  		expect(rendered).to include("hi, Jay")
  	end 
 
  	it 'has a logout button' do 
  		render
  		expect(rendered).to have_css("input[value='logout']")
  	end 
  end 
end
