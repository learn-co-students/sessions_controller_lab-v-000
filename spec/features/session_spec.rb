require 'rails_helper'

RSpec.describe "login", :type => :view do
  it "logs in user by name" do
    visit 'login'
    fill_in 'name', with: 'Spock'
    click_button 'login'
    expect(page.body).to include 'Spock'
  end
end

