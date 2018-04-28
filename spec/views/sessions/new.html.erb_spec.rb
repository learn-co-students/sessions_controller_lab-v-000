require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do
  # pending "add some examples to (or delete) #{__FILE__}"

    it "says something to the user on the page" do
	    session[:name] = 'Frank'
	    render
	    expect(rendered).to include 'Please login'
	  end

	  it "says users name on the page" do
	    session[:name] = 'Frank'
	    render
	    expect(rendered).to include 'Hi Frank'
	  end

end
