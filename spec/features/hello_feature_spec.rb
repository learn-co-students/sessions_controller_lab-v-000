#require 'rails_helper'

#RSpec.describe "hello without username", :type => :feature do

#  before do
#	  session[:name] = ""
#  end

#  it "redirects to login page with empty username" do
#	  visit '/hello'
#	  expect(response).to redirect_to controller: 'sessions', action: 'new'
#  end
#end

#RSpec.describe "hello with username", :type => :feature do
#  before do
#	  session[:name] = "Harleigh"
#  end

#  it "displays Hello #{name} on hello page" do
#	  visit '/hello'
#	  expect(page.body).to include 'Hello Harleigh'
#  end
#end
