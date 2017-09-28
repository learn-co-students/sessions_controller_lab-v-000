require 'rails_helper'

RSpec.describe "homepage", :type => :view do

  it 'shows name on root page if someone just logged in' do
    visit '/login'
    fill_in 'name', with: 'Rog'
    click_button 'login'
    expect(page.body).to include 'Rog'
  end

  it 'has a link to login if no one has logged in' do
    session[:name] = nil
    visit '/'
    expect(page.body).to include 'login'
  end
end
