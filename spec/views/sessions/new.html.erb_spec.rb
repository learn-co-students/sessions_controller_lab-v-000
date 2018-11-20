require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do
  it 'has an input box' do
    render 
    expect(rendered).to have_field('name')
    
  end

  it 'has a form that directs to login_path' do
    render 
    expect(rendered).to have_selector("form")
    expect(rendered).to include('action="/login"')
  end
end
