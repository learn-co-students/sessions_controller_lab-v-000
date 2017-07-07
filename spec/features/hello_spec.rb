require 'rails_helper'

RSpec.describe "homepage", :type => :view do

	describe 'root' do
	    it 'redirects shows link to login page if not logged in' do 
	      session[:name] = nil
	      visit '/'
	      expect(page.body).to have_link(nil, href:"/login")    
	    end
	end

end