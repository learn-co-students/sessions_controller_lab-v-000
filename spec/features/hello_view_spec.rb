require 'rails_helper'

RSpec.describe "homepage", :type => :view do
  it "displays name if logged in" do
    session[:name] = ['ariana']
    render :template => "application/hello.html.erb"
    expect(rendered).to include 'ariana'
  end

#   it 'redirects to root when name field is empty' do
#     render :template => "sessions/new.html.erb"
#     assign(:name, "")
#     find('input[name="login"]').click
#     response.should render_template("/")
#   end
end
